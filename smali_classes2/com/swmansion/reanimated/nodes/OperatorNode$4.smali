.class Lcom/swmansion/reanimated/nodes/OperatorNode$4;
.super Lcom/swmansion/reanimated/nodes/OperatorNode$ReduceOperator;
.source "OperatorNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/reanimated/nodes/OperatorNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Lcom/swmansion/reanimated/nodes/OperatorNode$ReduceOperator;-><init>(Lcom/swmansion/reanimated/nodes/OperatorNode$1;)V

    return-void
.end method


# virtual methods
.method public reduce(Ljava/lang/Double;Ljava/lang/Double;)D
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    div-double/2addr v0, p1

    return-wide v0
.end method
