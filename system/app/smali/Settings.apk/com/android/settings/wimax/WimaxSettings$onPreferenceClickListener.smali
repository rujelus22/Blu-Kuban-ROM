.class Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;
.super Ljava/lang/Object;
.source "WimaxSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wimax/WimaxSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPreferenceClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wimax/WimaxSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wimax/WimaxSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preference"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxSettings;->access$100(Lcom/android/settings/wimax/WimaxSettings;)Landroid/net/fourG/wimax/WimaxState;

    move-result-object v0

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v0, v1, :cond_f

    .line 578
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings$onPreferenceClickListener;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #calls: Lcom/android/settings/wimax/WimaxSettings;->buildDialogConnected(Landroid/preference/Preference;)Z
    invoke-static {v0, p1}, Lcom/android/settings/wimax/WimaxSettings;->access$600(Lcom/android/settings/wimax/WimaxSettings;Landroid/preference/Preference;)Z

    .line 580
    :cond_f
    const/4 v0, 0x1

    return v0
.end method
