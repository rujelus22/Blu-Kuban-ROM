.class public Lcom/google/android/apps/googlevoice/core/Action;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field public static final EXCLUSIVE_FLAGS:[[I = null

.field public static final FLAGS:[I = null

.field public static final FLAG_ARCHIVE:I = 0x4

.field public static final FLAG_DELETE:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_NOT_SPAM:I = 0x80

.field public static final FLAG_NOT_STARRED:I = 0x200

.field public static final FLAG_READ:I = 0x10

.field public static final FLAG_RESTORE:I = 0x8

.field public static final FLAG_SPAM:I = 0x40

.field public static final FLAG_STARRED:I = 0x100

.field public static final FLAG_UNDELETE:I = 0x2

.field public static final FLAG_UNREAD:I = 0x20


# instance fields
.field private conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

.field private flags:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 25
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    sput-object v0, Lcom/google/android/apps/googlevoice/core/Action;->FLAGS:[I

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_50

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_58

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_60

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_68

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_70

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/googlevoice/core/Action;->EXCLUSIVE_FLAGS:[[I

    return-void

    .line 25
    nop

    :array_38
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
    .end array-data

    .line 38
    :array_50
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_58
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_60
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    :array_68
    .array-data 0x4
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data

    :array_70
    .array-data 0x4
        0x0t 0x1t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/core/Action;-><init>(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "flags"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/google/android/apps/googlevoice/core/Action;->flags:I

    .line 64
    return-void
.end method

.method private toStringInternal(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .registers 5
    .parameter "buffer"
    .parameter "text"
    .parameter "flag"

    .prologue
    .line 165
    invoke-virtual {p0, p3}, Lcom/google/android/apps/googlevoice/core/Action;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 169
    :cond_e
    return-void
.end method


# virtual methods
.method public addFlag(I)Lcom/google/android/apps/googlevoice/core/Action;
    .registers 6
    .parameter "flag"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    sget-object v1, Lcom/google/android/apps/googlevoice/core/Action;->EXCLUSIVE_FLAGS:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_25

    .line 73
    sget-object v1, Lcom/google/android/apps/googlevoice/core/Action;->EXCLUSIVE_FLAGS:[[I

    aget-object v1, v1, v0

    aget v1, v1, v2

    if-ne p1, v1, :cond_2a

    .line 74
    sget-object v1, Lcom/google/android/apps/googlevoice/core/Action;->EXCLUSIVE_FLAGS:[[I

    aget-object v1, v1, v0

    aget v1, v1, v3

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/core/Action;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 75
    sget-object v1, Lcom/google/android/apps/googlevoice/core/Action;->EXCLUSIVE_FLAGS:[[I

    aget-object v1, v1, v0

    aget v1, v1, v3

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/core/Action;->removeFlagInternal(I)V

    .line 90
    :cond_25
    :goto_25
    return-object p0

    .line 77
    :cond_26
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/core/Action;->addFlagInternal(I)V

    goto :goto_25

    .line 81
    :cond_2a
    sget-object v1, Lcom/google/android/apps/googlevoice/core/Action;->EXCLUSIVE_FLAGS:[[I

    aget-object v1, v1, v0

    aget v1, v1, v3

    if-ne p1, v1, :cond_4c

    .line 82
    sget-object v1, Lcom/google/android/apps/googlevoice/core/Action;->EXCLUSIVE_FLAGS:[[I

    aget-object v1, v1, v0

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/core/Action;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 83
    sget-object v1, Lcom/google/android/apps/googlevoice/core/Action;->EXCLUSIVE_FLAGS:[[I

    aget-object v1, v1, v0

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/core/Action;->removeFlagInternal(I)V

    goto :goto_25

    .line 85
    :cond_48
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/core/Action;->addFlagInternal(I)V

    goto :goto_25

    .line 72
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method protected addFlagInternal(I)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 112
    iget v0, p0, Lcom/google/android/apps/googlevoice/core/Action;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/googlevoice/core/Action;->flags:I

    .line 113
    return-void
.end method

.method public addFlags(I)Lcom/google/android/apps/googlevoice/core/Action;
    .registers 7
    .parameter "newFlags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    sget-object v1, Lcom/google/android/apps/googlevoice/core/Action;->EXCLUSIVE_FLAGS:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_66

    .line 96
    sget-object v1, Lcom/google/android/apps/googlevoice/core/Action;->EXCLUSIVE_FLAGS:[[I

    aget-object v1, v1, v0

    aget v1, v1, v3

    and-int/2addr v1, p1

    sget-object v2, Lcom/google/android/apps/googlevoice/core/Action;->EXCLUSIVE_FLAGS:[[I

    aget-object v2, v2, v0

    aget v2, v2, v3

    if-ne v1, v2, :cond_38

    .line 97
    sget-object v1, Lcom/google/android/apps/googlevoice/core/Action;->EXCLUSIVE_FLAGS:[[I

    aget-object v1, v1, v0

    aget v1, v1, v4

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/core/Action;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 98
    sget-object v1, Lcom/google/android/apps/googlevoice/core/Action;->EXCLUSIVE_FLAGS:[[I

    aget-object v1, v1, v0

    aget v1, v1, v4

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/core/Action;->removeFlagInternal(I)V

    .line 100
    :cond_2c
    sget-object v1, Lcom/google/android/apps/googlevoice/core/Action;->EXCLUSIVE_FLAGS:[[I

    aget-object v1, v1, v0

    aget v1, v1, v3

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/core/Action;->addFlagInternal(I)V

    .line 95
    :cond_35
    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 101
    :cond_38
    sget-object v1, Lcom/google/android/apps/googlevoice/core/Action;->EXCLUSIVE_FLAGS:[[I

    aget-object v1, v1, v0

    aget v1, v1, v4

    and-int/2addr v1, p1

    sget-object v2, Lcom/google/android/apps/googlevoice/core/Action;->EXCLUSIVE_FLAGS:[[I

    aget-object v2, v2, v0

    aget v2, v2, v4

    if-ne v1, v2, :cond_35

    .line 102
    sget-object v1, Lcom/google/android/apps/googlevoice/core/Action;->EXCLUSIVE_FLAGS:[[I

    aget-object v1, v1, v0

    aget v1, v1, v3

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/core/Action;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 103
    sget-object v1, Lcom/google/android/apps/googlevoice/core/Action;->EXCLUSIVE_FLAGS:[[I

    aget-object v1, v1, v0

    aget v1, v1, v3

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/core/Action;->removeFlagInternal(I)V

    .line 105
    :cond_5c
    sget-object v1, Lcom/google/android/apps/googlevoice/core/Action;->EXCLUSIVE_FLAGS:[[I

    aget-object v1, v1, v0

    aget v1, v1, v4

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/core/Action;->addFlagInternal(I)V

    goto :goto_35

    .line 108
    :cond_66
    return-object p0
.end method

.method public getConversation()Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Action;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lcom/google/android/apps/googlevoice/core/Action;->flags:I

    return v0
.end method

.method public hasFlag(I)Z
    .registers 3
    .parameter "flag"

    .prologue
    .line 129
    iget v0, p0, Lcom/google/android/apps/googlevoice/core/Action;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public hasNone()Z
    .registers 2

    .prologue
    .line 133
    iget v0, p0, Lcom/google/android/apps/googlevoice/core/Action;->flags:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public removeFlag(I)Lcom/google/android/apps/googlevoice/core/Action;
    .registers 2
    .parameter "flag"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/core/Action;->removeFlagInternal(I)V

    .line 117
    return-object p0
.end method

.method protected removeFlagInternal(I)V
    .registers 4
    .parameter "flag"

    .prologue
    .line 121
    iget v0, p0, Lcom/google/android/apps/googlevoice/core/Action;->flags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/googlevoice/core/Action;->flags:I

    .line 122
    return-void
.end method

.method public setConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 2
    .parameter "conversation"

    .prologue
    .line 141
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 142
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/core/Action;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 148
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/Action;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 150
    const-string v1, "DELETE"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/googlevoice/core/Action;->toStringInternal(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 151
    const-string v1, "UNDELETE"

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/googlevoice/core/Action;->toStringInternal(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 152
    const-string v1, "ARCHIVE"

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/googlevoice/core/Action;->toStringInternal(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 153
    const-string v1, "UNARCHIVE"

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/googlevoice/core/Action;->toStringInternal(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 154
    const-string v1, "READ"

    const/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/googlevoice/core/Action;->toStringInternal(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 155
    const-string v1, "UNREAD"

    const/16 v2, 0x20

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/googlevoice/core/Action;->toStringInternal(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 156
    const-string v1, "STARRED"

    const/16 v2, 0x100

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/googlevoice/core/Action;->toStringInternal(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 157
    const-string v1, "NOT_STARRED"

    const/16 v2, 0x200

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/googlevoice/core/Action;->toStringInternal(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 158
    const-string v1, "SPAM"

    const/16 v2, 0x40

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/googlevoice/core/Action;->toStringInternal(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 159
    const-string v1, "NOT_SPAM"

    const/16 v2, 0x80

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/googlevoice/core/Action;->toStringInternal(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 160
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
