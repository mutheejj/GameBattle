.class final Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;
.super Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;
.source "Http1ExchangeCodec.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1ExchangeCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FixedLengthSource"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource\n*L\n1#1,519:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u000f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;",
        "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;",
        "Lokhttp3/internal/http1/Http1ExchangeCodec;",
        "bytesRemaining",
        "",
        "(Lokhttp3/internal/http1/Http1ExchangeCodec;J)V",
        "close",
        "",
        "read",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private bytesRemaining:J

.field final synthetic this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http1/Http1ExchangeCodec;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 375
    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 376
    invoke-direct {p0, p1}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;)V

    iput-wide p2, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    .line 380
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->responseBodyComplete$okhttp()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 405
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->getClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 408
    :cond_0
    iget-wide v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lokhttp3/internal/Util;->discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 409
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-static {v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$getRealConnection$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges()V

    .line 410
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->responseBodyComplete$okhttp()V

    :cond_2
    const/4 v0, 0x1

    .line 413
    invoke-virtual {p0, v0}, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->setClosed(Z)V

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_6

    .line 386
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->getClosed()Z

    move-result v3

    xor-int/2addr v0, v3

    if-eqz v0, :cond_5

    .line 387
    iget-wide v3, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    return-wide v5

    .line 389
    :cond_1
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v5

    if-nez p3, :cond_3

    .line 391
    iget-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-static {p1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$getRealConnection$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Lokhttp3/internal/connection/RealConnection;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges()V

    .line 392
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->responseBodyComplete$okhttp()V

    .line 394
    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 397
    :cond_3
    iget-wide v3, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->bytesRemaining:J

    sub-long/2addr v3, p1

    iput-wide v3, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->bytesRemaining:J

    cmp-long p3, v3, v1

    if-nez p3, :cond_4

    .line 399
    invoke-virtual {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;->responseBodyComplete$okhttp()V

    :cond_4
    return-wide p1

    .line 386
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 385
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method
