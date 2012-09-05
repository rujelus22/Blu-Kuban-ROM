.class Lcom/vlingo/client/settings/SettingsScreen$6;
.super Ljava/lang/Object;
.source "SettingsScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/settings/SettingsScreen;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
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
    .line 661
    iput-object p1, p0, Lcom/vlingo/client/settings/SettingsScreen$6;->this$0:Lcom/vlingo/client/settings/SettingsScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 663
    return-void
.end method
