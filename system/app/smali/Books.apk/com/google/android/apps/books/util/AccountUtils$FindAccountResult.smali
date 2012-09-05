.class public Lcom/google/android/apps/books/util/AccountUtils$FindAccountResult;
.super Ljava/lang/Object;
.source "AccountUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/AccountUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FindAccountResult"
.end annotation


# instance fields
.field public account:Landroid/accounts/Account;

.field public isFromPreferences:Z

.field public needsAuthorization:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
