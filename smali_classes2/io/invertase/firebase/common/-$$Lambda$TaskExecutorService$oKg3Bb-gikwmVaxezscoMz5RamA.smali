.class public final synthetic Lio/invertase/firebase/common/-$$Lambda$TaskExecutorService$oKg3Bb-gikwmVaxezscoMz5RamA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# instance fields
.field public final synthetic f$0:Lio/invertase/firebase/common/TaskExecutorService;


# direct methods
.method public synthetic constructor <init>(Lio/invertase/firebase/common/TaskExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/invertase/firebase/common/-$$Lambda$TaskExecutorService$oKg3Bb-gikwmVaxezscoMz5RamA;->f$0:Lio/invertase/firebase/common/TaskExecutorService;

    return-void
.end method


# virtual methods
.method public final rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    iget-object v0, p0, Lio/invertase/firebase/common/-$$Lambda$TaskExecutorService$oKg3Bb-gikwmVaxezscoMz5RamA;->f$0:Lio/invertase/firebase/common/TaskExecutorService;

    invoke-virtual {v0, p1, p2}, Lio/invertase/firebase/common/TaskExecutorService;->lambda$new$0$TaskExecutorService(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method
