.class public final enum Lcom/google/android/gms/internal/mlkit_vision_face/zzia;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face/zzcj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/mlkit_vision_face/zzia;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_vision_face/zzcj;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/mlkit_vision_face/zzia;


# instance fields
.field private final zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

    const-string v1, "UNKNOWN_CLASSIFICATIONS"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_face/zzia;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzia;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

    const-string v3, "NO_CLASSIFICATIONS"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_face/zzia;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzia;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

    const-string v5, "ALL_CLASSIFICATIONS"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_vision_face/zzia;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_face/zzia;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/mlkit_vision_face/zzia;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzia;->zze:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_face/zzia;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzia;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

    .line 1
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_face/zzia;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_face/zzia;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzia;->zze:I

    return v0
.end method
