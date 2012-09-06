.class public final Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;
.super Ljava/lang/Object;
.source "SuggestionsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY:[Ljava/lang/String; = null

.field public static final RESULT_ATTR_IN_THE_DICTIONARY:I = 0x1

.field public static final RESULT_ATTR_LOOKS_LIKE_TYPO:I = 0x2


# instance fields
.field private mCookie:I

.field private mSequence:I

.field private mSuggestions:[Ljava/lang/String;

.field private final mSuggestionsAttributes:I

.field private final mSuggestionsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->EMPTY:[Ljava/lang/String;

    .line 168
    new-instance v0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo$1;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo$1;-><init>()V

    .line 167
    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 25
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;)V
    .registers 5
    .parameter "suggestionsAttributes"
    .parameter "suggestions"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    .line 52
    iput p1, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestionsAttributes:I

    .line 53
    if-nez p2, :cond_16

    .line 54
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->EMPTY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestionsAvailable:Z

    .line 60
    :goto_11
    iput v1, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mCookie:I

    .line 61
    iput v1, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSequence:I

    .line 62
    return-void

    .line 57
    :cond_16
    iput-object p2, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestionsAvailable:Z

    goto :goto_11
.end method

.method public constructor <init>(I[Ljava/lang/String;II)V
    .registers 6
    .parameter "suggestionsAttributes"
    .parameter "suggestions"
    .parameter "cookie"
    .parameter "sequence"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    .line 73
    if-nez p2, :cond_16

    .line 74
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->EMPTY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestionsAvailable:Z

    .line 80
    :goto_f
    iput p1, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestionsAttributes:I

    .line 81
    iput p3, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mCookie:I

    .line 82
    iput p4, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSequence:I

    .line 83
    return-void

    .line 77
    :cond_16
    iput-object p2, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestionsAvailable:Z

    goto :goto_f
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .parameter "source"

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestionsAttributes:I

    .line 87
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    if-lt v0, v2, :cond_2b

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mCookie:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSequence:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_36

    :goto_28
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestionsAvailable:Z

    .line 92
    return-void

    .line 88
    :cond_2b
    iget-object v2, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 91
    :cond_36
    const/4 v1, 0x0

    goto :goto_28
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public getCookie()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mCookie:I

    return v0
.end method

.method public getSequence()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSequence:I

    return v0
.end method

.method public getSuggestionAt(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSuggestionsAttributes()I
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestionsAttributes:I

    return v0
.end method

.method public getSuggestionsCount()I
    .registers 2

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestionsAvailable:Z

    if-nez v0, :cond_6

    .line 151
    const/4 v0, -0x1

    .line 153
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_5
.end method

.method public setCookieAndSequence(II)V
    .registers 3
    .parameter "cookie"
    .parameter "sequence"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mCookie:I

    .line 117
    iput p2, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSequence:I

    .line 118
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 102
    iget v0, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestionsAttributes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 104
    iget v0, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mCookie:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;->mSuggestionsAvailable:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    return-void

    .line 106
    :cond_1d
    const/4 v0, 0x0

    goto :goto_19
.end method
