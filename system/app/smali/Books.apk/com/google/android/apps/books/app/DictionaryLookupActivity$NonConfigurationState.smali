.class final Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;
.super Ljava/lang/Object;
.source "DictionaryLookupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/DictionaryLookupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NonConfigurationState"
.end annotation


# instance fields
.field private mHtmlData:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/DictionaryLookupActivity$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;->mHtmlData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;->mHtmlData:Ljava/lang/String;

    return-object p1
.end method
