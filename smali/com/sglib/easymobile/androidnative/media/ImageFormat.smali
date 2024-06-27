.class public final enum Lcom/sglib/easymobile/androidnative/media/ImageFormat;
.super Ljava/lang/Enum;
.source "ImageFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sglib/easymobile/androidnative/media/ImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sglib/easymobile/androidnative/media/ImageFormat;

.field public static final enum JPG:Lcom/sglib/easymobile/androidnative/media/ImageFormat;

.field public static final enum PNG:Lcom/sglib/easymobile/androidnative/media/ImageFormat;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/sglib/easymobile/androidnative/media/ImageFormat;

    const-string v1, "JPG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sglib/easymobile/androidnative/media/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sglib/easymobile/androidnative/media/ImageFormat;->JPG:Lcom/sglib/easymobile/androidnative/media/ImageFormat;

    .line 5
    new-instance v0, Lcom/sglib/easymobile/androidnative/media/ImageFormat;

    const-string v1, "PNG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sglib/easymobile/androidnative/media/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sglib/easymobile/androidnative/media/ImageFormat;->PNG:Lcom/sglib/easymobile/androidnative/media/ImageFormat;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sglib/easymobile/androidnative/media/ImageFormat;

    .line 3
    sget-object v4, Lcom/sglib/easymobile/androidnative/media/ImageFormat;->JPG:Lcom/sglib/easymobile/androidnative/media/ImageFormat;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/sglib/easymobile/androidnative/media/ImageFormat;->$VALUES:[Lcom/sglib/easymobile/androidnative/media/ImageFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/sglib/easymobile/androidnative/media/ImageFormat;->value:I

    return-void
.end method

.method public static fromInt(I)Lcom/sglib/easymobile/androidnative/media/ImageFormat;
    .locals 1

    .line 18
    sget-object v0, Lcom/sglib/easymobile/androidnative/media/ImageFormat;->JPG:Lcom/sglib/easymobile/androidnative/media/ImageFormat;

    invoke-virtual {v0}, Lcom/sglib/easymobile/androidnative/media/ImageFormat;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 19
    sget-object p0, Lcom/sglib/easymobile/androidnative/media/ImageFormat;->JPG:Lcom/sglib/easymobile/androidnative/media/ImageFormat;

    return-object p0

    .line 21
    :cond_0
    sget-object p0, Lcom/sglib/easymobile/androidnative/media/ImageFormat;->PNG:Lcom/sglib/easymobile/androidnative/media/ImageFormat;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sglib/easymobile/androidnative/media/ImageFormat;
    .locals 1

    .line 3
    const-class v0, Lcom/sglib/easymobile/androidnative/media/ImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sglib/easymobile/androidnative/media/ImageFormat;

    return-object p0
.end method

.method public static values()[Lcom/sglib/easymobile/androidnative/media/ImageFormat;
    .locals 1

    .line 3
    sget-object v0, Lcom/sglib/easymobile/androidnative/media/ImageFormat;->$VALUES:[Lcom/sglib/easymobile/androidnative/media/ImageFormat;

    invoke-virtual {v0}, [Lcom/sglib/easymobile/androidnative/media/ImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sglib/easymobile/androidnative/media/ImageFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/sglib/easymobile/androidnative/media/ImageFormat;->value:I

    return v0
.end method
