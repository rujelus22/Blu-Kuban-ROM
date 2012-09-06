.class Lcom/google/android/maps/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/o;


# instance fields
.field final synthetic a:Lcom/google/android/maps/b;


# direct methods
.method constructor <init>(Lcom/google/android/maps/b;)V
    .registers 2
    .parameter

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/google/android/maps/d;->a:Lcom/google/android/maps/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/google/android/maps/d;->a:Lcom/google/android/maps/b;

    iget-object v0, v0, Lcom/google/android/maps/b;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1200
    const-string v1, "lastRunVersionCode"

    iget-object v2, p0, Lcom/google/android/maps/d;->a:Lcom/google/android/maps/b;

    iget-object v2, v2, Lcom/google/android/maps/b;->a:Landroid/content/pm/PackageInfo;

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1202
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1203
    return-void
.end method
