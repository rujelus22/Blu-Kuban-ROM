.class Lcom/sec/android/app/mobileprint/MPrintSettingActivity$4;
.super Ljava/lang/Object;
.source "MPrintSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$4;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter "preference"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$4;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->gotoSelectActivity()V
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->access$300(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V

    .line 145
    const/4 v0, 0x1

    return v0
.end method
