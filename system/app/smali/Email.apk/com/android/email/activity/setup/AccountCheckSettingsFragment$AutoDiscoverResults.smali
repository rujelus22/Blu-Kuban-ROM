.class public Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;
.super Lcom/android/emailcommon/mail/MessagingException;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoDiscoverResults"
.end annotation


# instance fields
.field public final mHostAuth:Lcom/android/emailcommon/provider/HostAuth;


# direct methods
.method public constructor <init>(ZLcom/android/emailcommon/provider/HostAuth;)V
    .registers 4
    .parameter "authenticationError"
    .parameter "hostAuth"

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 383
    if-eqz p1, :cond_d

    .line 384
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;->mExceptionType:I

    .line 388
    :goto_a
    iput-object p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 389
    return-void

    .line 386
    :cond_d
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;->mExceptionType:I

    goto :goto_a
.end method
