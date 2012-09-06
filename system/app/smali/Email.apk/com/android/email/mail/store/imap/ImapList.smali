.class public Lcom/android/email/mail/store/imap/ImapList;
.super Lcom/android/email/mail/store/imap/ImapElement;
.source "ImapList.java"


# static fields
.field public static final EMPTY:Lcom/android/email/mail/store/imap/ImapList;


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/mail/store/imap/ImapElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Lcom/android/email/mail/store/imap/ImapList$1;

    invoke-direct {v0}, Lcom/android/email/mail/store/imap/ImapList$1;-><init>()V

    sput-object v0, Lcom/android/email/mail/store/imap/ImapList;->EMPTY:Lcom/android/email/mail/store/imap/ImapList;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapElement;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method private final flatten(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 5
    .parameter "sb"

    .prologue
    .line 203
    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 205
    if-lez v1, :cond_15

    .line 206
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    :cond_15
    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    .line 209
    .local v0, e:Lcom/android/email/mail/store/imap/ImapElement;
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 210
    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v2

    invoke-direct {v2, p1}, Lcom/android/email/mail/store/imap/ImapList;->flatten(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 204
    :cond_26
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 211
    :cond_29
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapElement;->isString()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 212
    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 215
    .end local v0           #e:Lcom/android/email/mail/store/imap/ImapElement;
    :cond_3b
    const/16 v2, 0x5d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    return-object p1
.end method


# virtual methods
.method add(Lcom/android/email/mail/store/imap/ImapElement;)V
    .registers 4
    .parameter "e"

    .prologue
    .line 42
    if-nez p1, :cond_a

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t add null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_a
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public final contains(Ljava/lang/String;)Z
    .registers 4
    .parameter "s"

    .prologue
    .line 162
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 164
    const/4 v1, 0x1

    .line 167
    :goto_12
    return v1

    .line 162
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_16
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public destroy()V
    .registers 4

    .prologue
    .line 172
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1d

    .line 173
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/imap/ImapElement;

    .line 174
    .local v0, e:Lcom/android/email/mail/store/imap/ImapElement;
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapElement;->destroy()V

    goto :goto_a

    .line 176
    .end local v0           #e:Lcom/android/email/mail/store/imap/ImapElement;
    :cond_1a
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    .line 178
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1d
    invoke-super {p0}, Lcom/android/email/mail/store/imap/ImapElement;->destroy()V

    .line 179
    return-void
.end method

.method public equalsForTest(Lcom/android/email/mail/store/imap/ImapElement;)Z
    .registers 7
    .parameter "that"

    .prologue
    const/4 v3, 0x0

    .line 221
    invoke-super {p0, p1}, Lcom/android/email/mail/store/imap/ImapElement;->equalsForTest(Lcom/android/email/mail/store/imap/ImapElement;)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    .line 233
    :goto_8
    return v2

    :cond_9
    move-object v1, p1

    .line 224
    check-cast v1, Lcom/android/email/mail/store/imap/ImapList;

    .line 225
    .local v1, thatList:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v4

    if-eq v2, v4, :cond_18

    move v2, v3

    .line 226
    goto :goto_8

    .line 228
    :cond_18
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v2

    if-ge v0, v2, :cond_36

    .line 229
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapElement;

    invoke-virtual {v1, v0}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/email/mail/store/imap/ImapElement;->equalsForTest(Lcom/android/email/mail/store/imap/ImapElement;)Z

    move-result v2

    if-nez v2, :cond_33

    move v2, v3

    .line 230
    goto :goto_8

    .line 228
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 233
    :cond_36
    const/4 v2, 0x1

    goto :goto_8
.end method

.method public final flatten()Ljava/lang/String;
    .registers 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/ImapList;->flatten(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;
    .registers 3
    .parameter "index"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    sget-object v0, Lcom/android/email/mail/store/imap/ImapElement;->NONE:Lcom/android/email/mail/store/imap/ImapElement;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/imap/ImapElement;

    goto :goto_a
.end method

.method final getKeyedElementOrNull(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapElement;
    .registers 5
    .parameter "key"
    .parameter "prefixMatch"

    .prologue
    .line 116
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 117
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/email/mail/store/imap/ImapList;->is(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 118
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/imap/ImapElement;

    .line 121
    :goto_17
    return-object v1

    .line 116
    :cond_18
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 121
    :cond_1b
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public final getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapList;
    .registers 3
    .parameter "key"

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyedListOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapList;
    .registers 4
    .parameter "key"
    .parameter "prefixMatch"

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedElementOrNull(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    .line 138
    .local v0, e:Lcom/android/email/mail/store/imap/ImapElement;
    if-eqz v0, :cond_9

    check-cast v0, Lcom/android/email/mail/store/imap/ImapList;

    .end local v0           #e:Lcom/android/email/mail/store/imap/ImapElement;
    :goto_8
    return-object v0

    .restart local v0       #e:Lcom/android/email/mail/store/imap/ImapElement;
    :cond_9
    sget-object v0, Lcom/android/email/mail/store/imap/ImapList;->EMPTY:Lcom/android/email/mail/store/imap/ImapList;

    goto :goto_8
.end method

.method public final getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;
    .registers 3
    .parameter "key"

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;
    .registers 4
    .parameter "key"
    .parameter "prefixMatch"

    .prologue
    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedElementOrNull(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    .line 155
    .local v0, e:Lcom/android/email/mail/store/imap/ImapElement;
    if-eqz v0, :cond_9

    check-cast v0, Lcom/android/email/mail/store/imap/ImapString;

    .end local v0           #e:Lcom/android/email/mail/store/imap/ImapElement;
    :goto_8
    return-object v0

    .restart local v0       #e:Lcom/android/email/mail/store/imap/ImapElement;
    :cond_9
    sget-object v0, Lcom/android/email/mail/store/imap/ImapString;->EMPTY:Lcom/android/email/mail/store/imap/ImapString;

    goto :goto_8
.end method

.method public final getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;
    .registers 4
    .parameter "index"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    .line 99
    .local v0, el:Lcom/android/email/mail/store/imap/ImapElement;
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v1

    if-eqz v1, :cond_d

    check-cast v0, Lcom/android/email/mail/store/imap/ImapList;

    .end local v0           #el:Lcom/android/email/mail/store/imap/ImapElement;
    :goto_c
    return-object v0

    .restart local v0       #el:Lcom/android/email/mail/store/imap/ImapElement;
    :cond_d
    sget-object v0, Lcom/android/email/mail/store/imap/ImapList;->EMPTY:Lcom/android/email/mail/store/imap/ImapList;

    goto :goto_c
.end method

.method public final getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;
    .registers 4
    .parameter "index"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    .line 108
    .local v0, el:Lcom/android/email/mail/store/imap/ImapElement;
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapElement;->isString()Z

    move-result v1

    if-eqz v1, :cond_d

    check-cast v0, Lcom/android/email/mail/store/imap/ImapString;

    .end local v0           #el:Lcom/android/email/mail/store/imap/ImapElement;
    :goto_c
    return-object v0

    .restart local v0       #el:Lcom/android/email/mail/store/imap/ImapElement;
    :cond_d
    sget-object v0, Lcom/android/email/mail/store/imap/ImapString;->EMPTY:Lcom/android/email/mail/store/imap/ImapString;

    goto :goto_c
.end method

.method public final is(ILjava/lang/String;)Z
    .registers 4
    .parameter "index"
    .parameter "s"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/mail/store/imap/ImapList;->is(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final is(ILjava/lang/String;Z)Z
    .registers 5
    .parameter "index"
    .parameter "s"
    .parameter "prefixMatch"

    .prologue
    .line 78
    if-nez p3, :cond_b

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v0

    .line 81
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/email/mail/store/imap/ImapString;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isList()Z
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public final isString()Z
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
