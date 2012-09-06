.class final enum LabJ;
.super LabF;
.source "Action.java"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, LabF;-><init>(Ljava/lang/String;IILabG;)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 61
    sget-object v0, Lnk;->c:Lnk;

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a(Landroid/content/Context;Ljava/lang/String;Lnk;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
