.class public Lcom/android/email/wds/ServicemineEmailSetting$Protocol;
.super Lcom/android/email/wds/SimpleIdentifier;
.source "ServicemineParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/wds/ServicemineEmailSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Protocol"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/email/wds/SimpleIdentifier;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/email/wds/ServicemineEmailSetting$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/email/wds/ServicemineEmailSetting$Protocol;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/email/wds/SimpleIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method