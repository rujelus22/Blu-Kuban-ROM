.class Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting$2;
.super Ljava/lang/Object;
.source "SecretWallpaperLocalSetting.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;


# direct methods
.method constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting$2;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {p3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;->access$002(I)I

    .line 97
    const-string v1, "SecretWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "List Clicked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  /  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting$2;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;->fMilliIntervalSet:[J
    invoke-static {v3}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;->access$100(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;)[J

    move-result-object v3

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;->access$000()I

    move-result v4

    aget-wide v3, v3, v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;->access$200()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "interval_1"

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting$2;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;->fMilliIntervalSet:[J
    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;->access$100(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;)[J

    move-result-object v2

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;->access$000()I

    move-result v3

    aget-wide v2, v2, v3

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting$2;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;

    invoke-virtual {v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;->finish()V

    .line 103
    return-void
.end method
