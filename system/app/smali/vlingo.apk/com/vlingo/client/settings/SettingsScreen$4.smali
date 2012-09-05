.class Lcom/vlingo/client/settings/SettingsScreen$4;
.super Ljava/lang/Object;
.source "SettingsScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/settings/SettingsScreen;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/settings/SettingsScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/settings/SettingsScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/vlingo/client/settings/SettingsScreen$4;->this$0:Lcom/vlingo/client/settings/SettingsScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/vlingo/client/settings/SettingsScreen$4;->this$0:Lcom/vlingo/client/settings/SettingsScreen;

    invoke-virtual {v0}, Lcom/vlingo/client/settings/SettingsScreen;->updateSocialUI()V

    .line 369
    return-void
.end method
