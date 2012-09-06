.class public Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "SingleContactAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$PostDonutContactListAdapter;,
        Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$ContactListAdapter;
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


# instance fields
.field private originalText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 219
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

    sput-object v0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->originalText:Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->setup()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->originalText:Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->setup()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->originalText:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->setup()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->originalText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->originalText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->PHONES_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private setup()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v2

    if-eqz v2, :cond_38

    new-instance v2, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$ContactListAdapter;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$ContactListAdapter;-><init>(Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;)V

    :goto_14
    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    new-instance v1, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$1;-><init>(Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;)V

    .line 92
    .local v1, replaceContactFilter:Landroid/text/InputFilter;
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    .local v0, filters:Ljava/util/List;,"Ljava/util/List<Landroid/text/InputFilter;>;"
    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 94
    new-array v2, v3, [Landroid/text/InputFilter;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/InputFilter;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 95
    return-void

    .line 66
    .end local v0           #filters:Ljava/util/List;,"Ljava/util/List<Landroid/text/InputFilter;>;"
    .end local v1           #replaceContactFilter:Landroid/text/InputFilter;
    :cond_38
    new-instance v2, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$PostDonutContactListAdapter;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$PostDonutContactListAdapter;-><init>(Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;)V

    goto :goto_14
.end method


# virtual methods
.method protected replaceText(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, saved:Ljava/lang/String;
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 101
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->originalText:Ljava/lang/String;

    .line 102
    return-void
.end method
