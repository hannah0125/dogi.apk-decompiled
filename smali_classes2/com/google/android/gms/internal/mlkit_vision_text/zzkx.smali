.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_text/zzkx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzky;

.field public final synthetic zzb:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text/zzky;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzkx;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzky;

    iput-wide p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzkx;->zzb:J

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzkx;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzky;

    iget-wide v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzkx;->zzb:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzky;->zzb(JLjava/lang/Exception;)V

    return-void
.end method
