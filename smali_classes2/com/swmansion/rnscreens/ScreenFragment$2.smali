.class Lcom/swmansion/rnscreens/ScreenFragment$2;
.super Ljava/lang/Object;
.source "ScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/rnscreens/ScreenFragment;->onViewAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/rnscreens/ScreenFragment;


# direct methods
.method constructor <init>(Lcom/swmansion/rnscreens/ScreenFragment;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenFragment$2;->this$0:Lcom/swmansion/rnscreens/ScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenFragment$2;->this$0:Lcom/swmansion/rnscreens/ScreenFragment;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenFragment;->dispatchOnAppear()V

    return-void
.end method
