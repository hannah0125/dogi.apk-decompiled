.class Lcom/swmansion/reanimated/NodesManager$1;
.super Lcom/facebook/react/uimanager/GuardedFrameCallback;
.source "NodesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/reanimated/NodesManager;-><init>(Lcom/facebook/react/bridge/ReactContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/reanimated/NodesManager;


# direct methods
.method constructor <init>(Lcom/swmansion/reanimated/NodesManager;Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "reactContext"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/swmansion/reanimated/NodesManager$1;->this$0:Lcom/swmansion/reanimated/NodesManager;

    invoke-direct {p0, p2}, Lcom/facebook/react/uimanager/GuardedFrameCallback;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method protected doFrameGuarded(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameTimeNanos"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager$1;->this$0:Lcom/swmansion/reanimated/NodesManager;

    invoke-static {v0, p1, p2}, Lcom/swmansion/reanimated/NodesManager;->access$000(Lcom/swmansion/reanimated/NodesManager;J)V

    return-void
.end method
