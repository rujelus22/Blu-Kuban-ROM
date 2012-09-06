.class Lcom/google/android/apps/translate/LanguagesFactory$LanguagesInfo;
.super Ljava/lang/Object;
.source "LanguagesFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/LanguagesFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LanguagesInfo"
.end annotation


# instance fields
.field public languages:Lcom/google/android/apps/translate/Languages;

.field public locale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/translate/Languages;Ljava/util/Locale;)V
    .registers 3
    .parameter "languages"
    .parameter "locale"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/apps/translate/LanguagesFactory$LanguagesInfo;->languages:Lcom/google/android/apps/translate/Languages;

    .line 25
    iput-object p2, p0, Lcom/google/android/apps/translate/LanguagesFactory$LanguagesInfo;->locale:Ljava/util/Locale;

    .line 26
    return-void
.end method
