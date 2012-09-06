.class Lcom/google/android/maps/b;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/pm/PackageInfo;

.field final synthetic b:Lcom/google/googlenav/ui/v;

.field final synthetic c:Landroid/content/SharedPreferences;

.field final synthetic d:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;Landroid/content/pm/PackageInfo;Lcom/google/googlenav/ui/v;Landroid/content/SharedPreferences;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/google/android/maps/b;->d:Lcom/google/android/maps/MapsActivity;

    iput-object p2, p0, Lcom/google/android/maps/b;->a:Landroid/content/pm/PackageInfo;

    iput-object p3, p0, Lcom/google/android/maps/b;->b:Lcom/google/googlenav/ui/v;

    iput-object p4, p0, Lcom/google/android/maps/b;->c:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 12

    .prologue
    .line 1168
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->o()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_5d

    :cond_14
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v0

    if-nez v0, :cond_5d

    invoke-static {}, Lcom/google/googlenav/clientparam/f;->a()Lcom/google/googlenav/clientparam/EnableFeatureParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isOffersFeatureSwitcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/google/android/maps/b;->a:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    const/16 v1, 0x25f

    if-ne v0, v1, :cond_5d

    const/4 v0, 0x1

    .line 1174
    :goto_31
    if-eqz v0, :cond_5f

    .line 1175
    iget-object v0, p0, Lcom/google/android/maps/b;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->aA()Lab/a;

    move-result-object v0

    sget v1, Lag/c;->a:I

    const/16 v2, 0x30c

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1002fc

    const v4, 0x7f050017

    const v5, 0x7f050016

    const/16 v6, 0x1388

    const/16 v7, 0x7d0

    new-instance v8, Lcom/google/android/maps/c;

    invoke-direct {v8, p0}, Lcom/google/android/maps/c;-><init>(Lcom/google/android/maps/b;)V

    new-instance v9, Lcom/google/android/maps/d;

    invoke-direct {v9, p0}, Lcom/google/android/maps/d;-><init>(Lcom/google/android/maps/b;)V

    const/4 v10, 0x6

    invoke-virtual/range {v0 .. v10}, Lab/a;->a(ILjava/lang/CharSequence;IIIIILcom/google/googlenav/ui/view/n;Lcom/google/googlenav/ui/view/o;I)V

    .line 1213
    :goto_5c
    return-void

    .line 1168
    :cond_5d
    const/4 v0, 0x0

    goto :goto_31

    .line 1208
    :cond_5f
    iget-object v0, p0, Lcom/google/android/maps/b;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1209
    const-string v1, "lastRunVersionCode"

    iget-object v2, p0, Lcom/google/android/maps/b;->a:Landroid/content/pm/PackageInfo;

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1211
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_5c
.end method
