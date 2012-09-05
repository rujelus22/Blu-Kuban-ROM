.class public Lcom/sprint/w/installer/SprintIdInfo;
.super Landroid/app/Activity;
.source "SprintIdInfo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/SprintIdInfo;->requestWindowFeature(I)Z

    .line 17
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/SprintIdInfo;->setContentView(I)V

    .line 21
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sprint/w/installer/SprintIdInfo$1;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/SprintIdInfo$1;-><init>(Lcom/sprint/w/installer/SprintIdInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 27
    invoke-static {p0}, Lcom/sprint/w/installer/PackSwitcherLoader;->setVirtualPackDetail(Landroid/content/Context;)V

    .line 28
    const v0, 0x7f0c006b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/SprintIdInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sprint/w/installer/SprintIdInfo$2;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/SprintIdInfo$2;-><init>(Lcom/sprint/w/installer/SprintIdInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method
