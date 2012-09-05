.class Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BodyImageInfo"
.end annotation


# instance fields
.field public mContentUri:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 7293
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 7293
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;-><init>()V

    return-void
.end method
