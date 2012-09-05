.class Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatchCandidateList"
.end annotation


# instance fields
.field private mCount:I

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 201
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/ContactAggregator$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 201
    iget v0, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .registers 6
    .parameter "name"
    .parameter "nameLookupType"

    .prologue
    .line 209
    iget v1, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1b

    .line 210
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;

    invoke-direct {v2, p1, p2}, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :goto_14
    iget v1, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    .line 217
    return-void

    .line 212
    :cond_1b
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;

    .line 213
    .local v0, candidate:Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
    iput-object p1, v0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    .line 214
    iput p2, v0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mLookupType:I

    goto :goto_14
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    .line 221
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 224
    iget v0, p0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
