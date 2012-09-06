.class final enum LeE;
.super LeD;
.source "DocumentOpenMethod.java"


# direct methods
.method constructor <init>(Ljava/lang/String;ILQM;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, LeD;-><init>(Ljava/lang/String;ILQM;LeE;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .parameter

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    return-object v0
.end method
