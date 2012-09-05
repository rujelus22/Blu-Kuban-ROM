.class Lcom/swype/android/settings/LanguageChoiceList$LanguageChoiceListener;
.super Ljava/lang/Object;
.source "LanguageChoiceList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/settings/LanguageChoiceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LanguageChoiceListener"
.end annotation


# instance fields
.field private final langNames:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>([Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "langNames"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/swype/android/settings/LanguageChoiceList$LanguageChoiceListener;->langNames:[Ljava/lang/CharSequence;

    .line 74
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 78
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/swype/android/inputmethod/SwypeApplication;

    .line 80
    iget-object v2, p0, Lcom/swype/android/settings/LanguageChoiceList$LanguageChoiceListener;->langNames:[Ljava/lang/CharSequence;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/swype/android/inputmethod/SwypeApplication;->setMessageLanguage(Ljava/lang/String;)V

    .line 81
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 82
    return-void
.end method
