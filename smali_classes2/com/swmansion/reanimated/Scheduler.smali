.class public Lcom/swmansion/reanimated/Scheduler;
.super Ljava/lang/Object;
.source "Scheduler.java"


# instance fields
.field private final mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final mHybridData:Lcom/facebook/jni/HybridData;

.field private final mUIThreadRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/swmansion/reanimated/Scheduler;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    new-instance v0, Lcom/swmansion/reanimated/Scheduler$1;

    invoke-direct {v0, p0}, Lcom/swmansion/reanimated/Scheduler$1;-><init>(Lcom/swmansion/reanimated/Scheduler;)V

    iput-object v0, p0, Lcom/swmansion/reanimated/Scheduler;->mUIThreadRunnable:Ljava/lang/Runnable;

    .line 27
    invoke-direct {p0}, Lcom/swmansion/reanimated/Scheduler;->initHybrid()Lcom/facebook/jni/HybridData;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/reanimated/Scheduler;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 28
    iput-object p1, p0, Lcom/swmansion/reanimated/Scheduler;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method static synthetic access$000(Lcom/swmansion/reanimated/Scheduler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/swmansion/reanimated/Scheduler;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/swmansion/reanimated/Scheduler;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/swmansion/reanimated/Scheduler;->triggerUI()V

    return-void
.end method

.method private native initHybrid()Lcom/facebook/jni/HybridData;
.end method

.method private scheduleOnUI()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/swmansion/reanimated/Scheduler;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v1, p0, Lcom/swmansion/reanimated/Scheduler;->mUIThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnUiQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private native triggerUI()V
.end method


# virtual methods
.method public deactivate()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/swmansion/reanimated/Scheduler;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
