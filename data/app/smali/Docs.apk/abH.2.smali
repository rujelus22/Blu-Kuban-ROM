.class final enum LabH;
.super LabF;
.source "Action.java"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, LabF;-><init>(Ljava/lang/String;IILabG;)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 40
    sget-object v0, Lhf;->c:Lhf;

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a(Landroid/content/Context;Ljava/lang/String;Lhf;)Landroid/content/Intent;

    move-result-object v0

    .line 42
    const-string v1, "dialogToShow"

    sget-object v2, Lhg;->b:Lhg;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 43
    return-object v0
.end method
