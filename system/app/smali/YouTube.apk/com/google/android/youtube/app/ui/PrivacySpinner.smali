.class public Lcom/google/android/youtube/app/ui/PrivacySpinner;
.super Landroid/widget/Spinner;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;


# instance fields
.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    sput-object v0, Lcom/google/android/youtube/app/ui/PrivacySpinner;->a:Ljava/util/Map;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Privacy;->PRIVATE:Lcom/google/android/youtube/core/model/Video$Privacy;

    const v2, 0x7f0b014e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/google/android/youtube/app/ui/PrivacySpinner;->a:Ljava/util/Map;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Privacy;->PUBLIC:Lcom/google/android/youtube/core/model/Video$Privacy;

    const v2, 0x7f0b014d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/google/android/youtube/app/ui/PrivacySpinner;->a:Ljava/util/Map;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Privacy;->UNLISTED:Lcom/google/android/youtube/core/model/Video$Privacy;

    const v2, 0x7f0b014f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/PrivacySpinner;->b:Landroid/view/LayoutInflater;

    .line 41
    new-instance v0, Lcom/google/android/youtube/app/ui/ba;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/ba;-><init>(Lcom/google/android/youtube/app/ui/PrivacySpinner;)V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/PrivacySpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/PrivacySpinner;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/PrivacySpinner;->b:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic b()Ljava/util/Map;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/youtube/app/ui/PrivacySpinner;->a:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/model/Video$Privacy;
    .registers 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/PrivacySpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Privacy;

    return-object v0
.end method

.method public setPrivacy(Lcom/google/android/youtube/core/model/Video$Privacy;)V
    .registers 3
    .parameter

    .prologue
    .line 45
    const-string v0, "privacy may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video$Privacy;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/PrivacySpinner;->setSelection(I)V

    .line 47
    return-void
.end method
