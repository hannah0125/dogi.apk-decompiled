.class public Lcom/facebook/hermes/reactexecutor/HermesExecutorFactory;
.super Ljava/lang/Object;
.source "HermesExecutorFactory.java"

# interfaces
.implements Lcom/facebook/react/bridge/JavaScriptExecutorFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "Hermes"


# instance fields
.field private final mConfig:Lcom/facebook/hermes/reactexecutor/RuntimeConfig;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/facebook/hermes/reactexecutor/RuntimeConfig;

    const-wide/16 v1, 0x400

    invoke-direct {v0, v1, v2}, Lcom/facebook/hermes/reactexecutor/RuntimeConfig;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/facebook/hermes/reactexecutor/HermesExecutorFactory;-><init>(Lcom/facebook/hermes/reactexecutor/RuntimeConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/hermes/reactexecutor/RuntimeConfig;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/hermes/reactexecutor/HermesExecutorFactory;->mConfig:Lcom/facebook/hermes/reactexecutor/RuntimeConfig;

    return-void
.end method


# virtual methods
.method public create()Lcom/facebook/react/bridge/JavaScriptExecutor;
    .locals 2

    .line 29
    new-instance v0, Lcom/facebook/hermes/reactexecutor/HermesExecutor;

    iget-object v1, p0, Lcom/facebook/hermes/reactexecutor/HermesExecutorFactory;->mConfig:Lcom/facebook/hermes/reactexecutor/RuntimeConfig;

    invoke-direct {v0, v1}, Lcom/facebook/hermes/reactexecutor/HermesExecutor;-><init>(Lcom/facebook/hermes/reactexecutor/RuntimeConfig;)V

    return-object v0
.end method

.method public startSamplingProfiler()V
    .locals 0

    .line 34
    invoke-static {}, Lcom/facebook/hermes/instrumentation/HermesSamplingProfiler;->enable()V

    return-void
.end method

.method public stopSamplingProfiler(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-static {p1}, Lcom/facebook/hermes/instrumentation/HermesSamplingProfiler;->dumpSampledTraceToFile(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/facebook/hermes/instrumentation/HermesSamplingProfiler;->disable()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "JSIExecutor+HermesRuntime"

    return-object v0
.end method
