.class public Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "MultiContactAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView$PostDonutContactListAdapter;,
        Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView$ContactListAdapter;
    }
.end annotation


# static fields
.field public static final ANNOTATION_NAME:Ljava/lang/String; = "name"

.field public static final ANNOTATION_NUMBER:Ljava/lang/String; = "number"

.field public static final ANNOTATION_ORIGINAL:Ljava/lang/String; = "original"

.field public static final ANNOTATION_PERSON_ID:Ljava/lang/String; = "person_id"

.field private static final PHONES_LABEL_INDEX:I = 0x5

.field private static final PHONES_NAME_INDEX:I = 0x2

.field private static final PHONES_NUMBER_INDEX:I = 0x3

.field private static final PHONES_PERSON_ID_INDEX:I = 0x1

.field private static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field private static final PHONES_TYPE_INDEX:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 179
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "label"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;->setup()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;->setup()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;->setup()V

    .line 45
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;->PHONES_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private setup()V
    .registers 2

    .prologue
    .line 58
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView$ContactListAdapter;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView$ContactListAdapter;-><init>(Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;)V

    :goto_13
    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    new-instance v0, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;

    invoke-direct {v0}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 62
    return-void

    .line 58
    :cond_1f
    new-instance v0, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView$PostDonutContactListAdapter;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView$PostDonutContactListAdapter;-><init>(Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;)V

    goto :goto_13
.end method
