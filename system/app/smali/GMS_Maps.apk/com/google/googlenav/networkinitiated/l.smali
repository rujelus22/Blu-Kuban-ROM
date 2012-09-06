.class Lcom/google/googlenav/networkinitiated/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/networkinitiated/k;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/googlenav/networkinitiated/l;->a:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 26
    packed-switch p1, :pswitch_data_32

    .line 48
    :goto_4
    :pswitch_4
    return-void

    .line 29
    :pswitch_5
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/l;->a:Landroid/content/Context;

    const-string v1, "network_initiated_prefs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "registration_id"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, LR/b;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_4

    .line 37
    :pswitch_1b
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/l;->a:Landroid/content/Context;

    const-string v1, "network_initiated_prefs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "registration_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, LR/b;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_4

    .line 26
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_1b
    .end packed-switch
.end method
