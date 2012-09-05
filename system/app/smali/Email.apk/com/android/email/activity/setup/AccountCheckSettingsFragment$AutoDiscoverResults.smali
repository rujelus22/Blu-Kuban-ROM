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


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;


# direct methods
.method public constructor <init>(ZLcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .registers 4
    .parameter "authenticationError"
    .parameter "hostAuth"

    .prologue
    .line 471
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 472
    if-eqz p1, :cond_d

    .line 473
    const/16 v0, 0x4b

    iput v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    .line 477
    :goto_a
    iput-object p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 478
    return-void

    .line 475
    :cond_d
    const/16 v0, 0x4c

    iput v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    goto :goto_a
.end method
