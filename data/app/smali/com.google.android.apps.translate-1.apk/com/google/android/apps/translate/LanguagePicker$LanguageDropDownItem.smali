.class public Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;
.super Ljava/lang/Object;
.source "LanguagePicker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/LanguagePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LanguageDropDownItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final language:Lcom/google/android/apps/translate/Language;

.field private final spec:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;)V
    .registers 3
    .parameter "language"
    .parameter "spec"

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->language:Lcom/google/android/apps/translate/Language;

    .line 458
    iput-object p2, p0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->spec:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    .line 459
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;)I
    .registers 4
    .parameter "another"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->spec:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->getPriority()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->getSpec()Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->getPriority()I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 477
    iget-object v0, p0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->language:Lcom/google/android/apps/translate/Language;

    invoke-virtual {p1}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->getLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/Language;->compareTo(Lcom/google/android/apps/translate/Language;)I

    move-result v0

    .line 479
    :goto_1a
    return v0

    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->spec:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->getPriority()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->getSpec()Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1a
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 431
    check-cast p1, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->compareTo(Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;)I

    move-result v0

    return v0
.end method

.method public getLanguage()Lcom/google/android/apps/translate/Language;
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->language:Lcom/google/android/apps/translate/Language;

    return-object v0
.end method

.method public getSpec()Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->spec:Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem$LanguageSpec;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/android/apps/translate/LanguagePicker$LanguageDropDownItem;->language:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/Language;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
