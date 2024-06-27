.class final enum Lcom/google/android/gms/common/zzo;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-basement@@17.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/common/zzo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/common/zzo;

.field private static final enum zzc:Lcom/google/android/gms/common/zzo;

.field private static final enum zzd:Lcom/google/android/gms/common/zzo;

.field private static final enum zze:Lcom/google/android/gms/common/zzo;

.field private static final enum zzf:Lcom/google/android/gms/common/zzo;

.field private static final synthetic zzg:[Lcom/google/android/gms/common/zzo;


# instance fields
.field final zzb:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 10
    new-instance v0, Lcom/google/android/gms/common/zzo;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/common/zzo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/common/zzo;->zzc:Lcom/google/android/gms/common/zzo;

    .line 11
    new-instance v0, Lcom/google/android/gms/common/zzo;

    const-string v1, "UNKNOWN_CERT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/common/zzo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/common/zzo;->zzd:Lcom/google/android/gms/common/zzo;

    .line 12
    new-instance v0, Lcom/google/android/gms/common/zzo;

    const-string v1, "TEST_KEYS_REJECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/common/zzo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/common/zzo;->zze:Lcom/google/android/gms/common/zzo;

    .line 13
    new-instance v0, Lcom/google/android/gms/common/zzo;

    const-string v1, "PACKAGE_NOT_FOUND"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/common/zzo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/common/zzo;->zza:Lcom/google/android/gms/common/zzo;

    .line 14
    new-instance v0, Lcom/google/android/gms/common/zzo;

    const-string v1, "GENERIC_ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/common/zzo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/common/zzo;->zzf:Lcom/google/android/gms/common/zzo;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/google/android/gms/common/zzo;

    .line 15
    sget-object v7, Lcom/google/android/gms/common/zzo;->zzc:Lcom/google/android/gms/common/zzo;

    aput-object v7, v1, v2

    sget-object v2, Lcom/google/android/gms/common/zzo;->zzd:Lcom/google/android/gms/common/zzo;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/common/zzo;->zze:Lcom/google/android/gms/common/zzo;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/common/zzo;->zza:Lcom/google/android/gms/common/zzo;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    .line 16
    sput-object v1, Lcom/google/android/gms/common/zzo;->zzg:[Lcom/google/android/gms/common/zzo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput p3, p0, Lcom/google/android/gms/common/zzo;->zzb:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/common/zzo;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/common/zzo;->zzg:[Lcom/google/android/gms/common/zzo;

    invoke-virtual {v0}, [Lcom/google/android/gms/common/zzo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/zzo;

    return-object v0
.end method

.method static zza(I)Lcom/google/android/gms/common/zzo;
    .locals 5

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/zzo;->values()[Lcom/google/android/gms/common/zzo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 6
    iget v4, v3, Lcom/google/android/gms/common/zzo;->zzb:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    sget-object p0, Lcom/google/android/gms/common/zzo;->zzc:Lcom/google/android/gms/common/zzo;

    return-object p0
.end method
