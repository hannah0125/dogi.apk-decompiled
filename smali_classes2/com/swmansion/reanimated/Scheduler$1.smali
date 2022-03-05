.class Lcom/swmansion/reanimated/Scheduler$1;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/reanimated/Scheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/reanimated/Scheduler;


# direct methods
.method constructor <init>(Lcom/swmansion/reanimated/Scheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/swmansion/reanimated/Scheduler$1;->this$0:Lcom/swmansion/reanimated/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/swmansion/reanimated/Scheduler$1;->this$0:Lcom/swmansion/reanimated/Scheduler;

    invoke-static {v0}, Lcom/swmansion/reanimated/Scheduler;->access$000(Lcom/swmansion/reanimated/Scheduler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/swmansion/reanimated/Scheduler$1;->this$0:Lcom/swmansion/reanimated/Scheduler;

    invoke-static {v0}, Lcom/swmansion/reanimated/Scheduler;->access$100(Lcom/swmansion/reanimated/Scheduler;)V

    :cond_0
    return-void
.end method
