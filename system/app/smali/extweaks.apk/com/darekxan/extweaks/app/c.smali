.class final Lcom/darekxan/extweaks/app/c;
.super Ljava/lang/Object;
.source "ExTweaksActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/darekxan/extweaks/app/ExTweaksActivity;


# direct methods
.method constructor <init>(Lcom/darekxan/extweaks/app/ExTweaksActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/darekxan/extweaks/app/c;->a:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-static {}, Lcom/darekxan/extweaks/a;->values()[Lcom/darekxan/extweaks/a;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_8
    if-lt v0, v3, :cond_14

    .line 71
    iget-object v0, p0, Lcom/darekxan/extweaks/app/c;->a:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    invoke-static {v0}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->a(Lcom/darekxan/extweaks/app/ExTweaksActivity;)Lcom/darekxan/extweaks/app/i;

    move-result-object v0

    invoke-virtual {v0, v9, v1}, Lcom/darekxan/extweaks/app/i;->a(ZZ)V

    .line 74
    return-void

    .line 67
    :cond_14
    aget-object v4, v2, v0

    .line 68
    invoke-virtual {v4}, Lcom/darekxan/extweaks/a;->b()Lcom/darekxan/extweaks/widgets/SettingsRoot;

    move-result-object v5

    if-eqz v5, :cond_70

    .line 69
    invoke-virtual {v4}, Lcom/darekxan/extweaks/a;->b()Lcom/darekxan/extweaks/widgets/SettingsRoot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->getResetAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_70

    .line 70
    iget-object v5, p0, Lcom/darekxan/extweaks/app/c;->a:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    invoke-virtual {v5}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/darekxan/extweaks/app/c;->a:Lcom/darekxan/extweaks/app/ExTweaksActivity;

    invoke-virtual {v6}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->a()Lcom/darekxan/extweaks/g;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/darekxan/extweaks/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/darekxan/extweaks/a;->b()Lcom/darekxan/extweaks/widgets/SettingsRoot;

    move-result-object v8

    invoke-virtual {v8}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->getScript()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/darekxan/extweaks/a;->b()Lcom/darekxan/extweaks/widgets/SettingsRoot;

    move-result-object v4

    invoke-virtual {v4}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->getResetAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Lcom/darekxan/extweaks/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 67
    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method
