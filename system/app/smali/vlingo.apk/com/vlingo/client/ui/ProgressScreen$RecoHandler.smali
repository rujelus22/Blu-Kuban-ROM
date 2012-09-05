.class Lcom/vlingo/client/ui/ProgressScreen$RecoHandler;
.super Ljava/lang/Object;
.source "ProgressScreen.java"

# interfaces
.implements Lcom/vlingo/client/android/core/asr/ProgressHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/ui/ProgressScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecoHandler"
.end annotation


# instance fields
.field m_Screen:Lcom/vlingo/client/ui/ProgressScreen;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/ui/ProgressScreen$RecoHandler;->m_Screen:Lcom/vlingo/client/ui/ProgressScreen;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/ui/ProgressScreen$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/vlingo/client/ui/ProgressScreen$RecoHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vlingo/client/ui/ProgressScreen$RecoHandler;->m_Screen:Lcom/vlingo/client/ui/ProgressScreen;

    invoke-virtual {v0}, Lcom/vlingo/client/ui/ProgressScreen;->finish()V

    .line 127
    return-void
.end method

.method public fetch()V
    .registers 1

    .prologue
    .line 130
    #calls: Lcom/vlingo/client/ui/ProgressScreen;->inflate()V
    invoke-static {}, Lcom/vlingo/client/ui/ProgressScreen;->access$100()V

    .line 131
    return-void
.end method

.method public init(Lcom/vlingo/client/ui/ProgressScreen;)V
    .registers 2
    .parameter "screen"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/vlingo/client/ui/ProgressScreen$RecoHandler;->m_Screen:Lcom/vlingo/client/ui/ProgressScreen;

    .line 123
    return-void
.end method
