.class final Lcom/google/android/apps/translate/translation/TranslateHelper$1;
.super Ljava/lang/Object;
.source "TranslateHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/TranslateHelper;->sendTranslateResultAfterLoadLanguages(Landroid/app/Activity;Lcom/google/android/apps/translate/translation/TranslateEntry;Ljava/util/Locale;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$canceled:[Z


# direct methods
.method constructor <init>([Z)V
    .registers 2
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$1;->val$canceled:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$1;->val$canceled:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 469
    return-void
.end method
