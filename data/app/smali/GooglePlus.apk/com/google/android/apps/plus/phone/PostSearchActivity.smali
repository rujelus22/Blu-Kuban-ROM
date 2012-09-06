.class public Lcom/google/android/apps/plus/phone/PostSearchActivity;
.super Lcom/google/android/apps/plus/phone/HostActivity;
.source "PostSearchActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HostActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createHostedFragment()Lcom/google/android/apps/plus/phone/HostedFragment;
    .registers 2

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;-><init>()V

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 28
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->SEARCH:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method
