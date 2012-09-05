.class public Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;
.super Ljava/lang/Object;
.source "AxT9Language.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9Language;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LanguageInfo"
.end annotation


# instance fields
.field private mLangCode:Ljava/lang/String;

.field private mLangDBId:S

.field private mLangName:Ljava/lang/String;

.field private mLangStringId:I


# direct methods
.method constructor <init>(SILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "langDBId"
    .parameter "langStringId"
    .parameter "langName"
    .parameter "langCode"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-short p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->mLangDBId:S

    .line 43
    iput p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->mLangStringId:I

    .line 44
    iput-object p3, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->mLangName:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->mLangCode:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getLangCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->mLangCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLangDBId()S
    .registers 2

    .prologue
    .line 48
    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->mLangDBId:S

    return v0
.end method

.method public getLangName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->mLangName:Ljava/lang/String;

    return-object v0
.end method

.method public getLangStringId()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->mLangStringId:I

    return v0
.end method
