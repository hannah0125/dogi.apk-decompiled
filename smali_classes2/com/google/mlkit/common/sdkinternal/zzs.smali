.class final Lcom/google/mlkit/common/sdkinternal/zzs;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.2.0"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic zza:Lcom/google/mlkit/common/sdkinternal/TaskQueue;


# direct methods
.method synthetic constructor <init>(Lcom/google/mlkit/common/sdkinternal/TaskQueue;Lcom/google/mlkit/common/sdkinternal/zzq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzs;->zza:Lcom/google/mlkit/common/sdkinternal/TaskQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zza(Lcom/google/mlkit/common/sdkinternal/TaskQueue;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Thread;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/zzs;->zza:Lcom/google/mlkit/common/sdkinternal/TaskQueue;

    invoke-static {v0}, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zza(Lcom/google/mlkit/common/sdkinternal/TaskQueue;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/zzs;->zza:Lcom/google/mlkit/common/sdkinternal/TaskQueue;

    .line 2
    invoke-static {v0}, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzb(Lcom/google/mlkit/common/sdkinternal/TaskQueue;)V

    return-void
.end method
