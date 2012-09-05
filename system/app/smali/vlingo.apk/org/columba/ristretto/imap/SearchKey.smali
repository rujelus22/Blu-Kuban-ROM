.class public Lorg/columba/ristretto/imap/SearchKey;
.super Ljava/lang/Object;
.source "SearchKey.java"


# static fields
.field public static final ALL:Ljava/lang/String; = "ALL"

.field public static final ANSWERED:Ljava/lang/String; = "ANSWERED"

.field public static final BCC:Ljava/lang/String; = "BCC"

.field public static final BEFORE:Ljava/lang/String; = "BEFORE"

.field public static final BODY:Ljava/lang/String; = "BODY"

.field public static final CC:Ljava/lang/String; = "CC"

.field public static final DELETED:Ljava/lang/String; = "DELETED"

.field public static final DRAFT:Ljava/lang/String; = "DRAFT"

.field public static final FLAGGED:Ljava/lang/String; = "FLAGGED"

.field public static final FROM:Ljava/lang/String; = "FROM"

.field public static final HEADER:Ljava/lang/String; = "HEADER"

.field public static final KEYWORD:Ljava/lang/String; = "KEYWORD"

.field public static final LARGER:Ljava/lang/String; = "LARGER"

.field public static final NEW:Ljava/lang/String; = "NEW"

.field public static final NOT:Ljava/lang/String; = "NOT"

.field public static final OLD:Ljava/lang/String; = "OLD"

.field public static final ON:Ljava/lang/String; = "ON"

.field public static final OR:Ljava/lang/String; = "OR"

.field public static final RECENT:Ljava/lang/String; = "RECENT"

.field public static final SEEN:Ljava/lang/String; = "SEEN"

.field public static final SENTBEFORE:Ljava/lang/String; = "SENTBEFORE"

.field public static final SENTON:Ljava/lang/String; = "SENTON"

.field public static final SENTSINCE:Ljava/lang/String; = "SENTSINCE"

.field public static final SINCE:Ljava/lang/String; = "SINCE"

.field public static final SMALLER:Ljava/lang/String; = "SMALLER"

.field public static final SUBJECT:Ljava/lang/String; = "SUBJECT"

.field public static final TEXT:Ljava/lang/String; = "TEXT"

.field public static final TO:Ljava/lang/String; = "TO"

.field public static final UID:Ljava/lang/String; = "UID"

.field public static final UNANSWERED:Ljava/lang/String; = "UNANSWERED"

.field public static final UNDELETED:Ljava/lang/String; = "UNDELETED"

.field public static final UNDRAFT:Ljava/lang/String; = "UNDRAFT"

.field public static final UNFLAGGED:Ljava/lang/String; = "UNFLAGGED"

.field public static final UNKEYWORD:Ljava/lang/String; = "UNKEYWORD"

.field public static final UNSEEN:Ljava/lang/String; = "UNSEEN"


# instance fields
.field private arg:Ljava/lang/Object;

.field private arg2:Ljava/lang/Object;

.field private key:Ljava/lang/String;

.field private list:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "key"

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lorg/columba/ristretto/imap/SearchKey;->key:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3
    .parameter "key"
    .parameter "arg"

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lorg/columba/ristretto/imap/SearchKey;->key:Ljava/lang/String;

    .line 225
    iput-object p2, p0, Lorg/columba/ristretto/imap/SearchKey;->arg:Ljava/lang/Object;

    .line 226
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "key"
    .parameter "arg"

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lorg/columba/ristretto/imap/SearchKey;->key:Ljava/lang/String;

    .line 214
    iput-object p2, p0, Lorg/columba/ristretto/imap/SearchKey;->arg:Ljava/lang/Object;

    .line 215
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .parameter "arg"
    .parameter "arg2"

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Lorg/columba/ristretto/imap/SearchKey;->key:Ljava/lang/String;

    .line 248
    iput-object p2, p0, Lorg/columba/ristretto/imap/SearchKey;->arg:Ljava/lang/Object;

    .line 249
    iput-object p3, p0, Lorg/columba/ristretto/imap/SearchKey;->arg2:Ljava/lang/Object;

    .line 250
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/columba/ristretto/imap/IMAPDate;)V
    .registers 3
    .parameter "key"
    .parameter "arg"

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lorg/columba/ristretto/imap/SearchKey;->key:Ljava/lang/String;

    .line 236
    iput-object p2, p0, Lorg/columba/ristretto/imap/SearchKey;->arg:Ljava/lang/Object;

    .line 237
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/columba/ristretto/imap/SearchKey;)V
    .registers 3
    .parameter "key"
    .parameter "arg"

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Lorg/columba/ristretto/imap/SearchKey;->key:Ljava/lang/String;

    .line 260
    iput-object p2, p0, Lorg/columba/ristretto/imap/SearchKey;->arg:Ljava/lang/Object;

    .line 261
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/columba/ristretto/imap/SearchKey;Lorg/columba/ristretto/imap/SearchKey;)V
    .registers 4
    .parameter "key"
    .parameter "arg"
    .parameter "arg2"

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lorg/columba/ristretto/imap/SearchKey;->key:Ljava/lang/String;

    .line 272
    iput-object p2, p0, Lorg/columba/ristretto/imap/SearchKey;->arg:Ljava/lang/Object;

    .line 273
    iput-object p3, p0, Lorg/columba/ristretto/imap/SearchKey;->arg2:Ljava/lang/Object;

    .line 274
    return-void
.end method


# virtual methods
.method public add(Lorg/columba/ristretto/imap/SearchKey;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 282
    iget-object v0, p0, Lorg/columba/ristretto/imap/SearchKey;->list:Ljava/util/List;

    if-nez v0, :cond_b

    .line 283
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/imap/SearchKey;->list:Ljava/util/List;

    .line 286
    :cond_b
    iget-object v0, p0, Lorg/columba/ristretto/imap/SearchKey;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x20

    .line 337
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 339
    .local v1, result:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lorg/columba/ristretto/imap/SearchKey;->list:Ljava/util/List;

    if-eqz v2, :cond_10

    .line 340
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 342
    :cond_10
    iget-object v2, p0, Lorg/columba/ristretto/imap/SearchKey;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    iget-object v2, p0, Lorg/columba/ristretto/imap/SearchKey;->arg:Ljava/lang/Object;

    if-eqz v2, :cond_25

    .line 344
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 345
    iget-object v2, p0, Lorg/columba/ristretto/imap/SearchKey;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    :cond_25
    iget-object v2, p0, Lorg/columba/ristretto/imap/SearchKey;->arg2:Ljava/lang/Object;

    if-eqz v2, :cond_35

    .line 348
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 349
    iget-object v2, p0, Lorg/columba/ristretto/imap/SearchKey;->arg2:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    :cond_35
    iget-object v2, p0, Lorg/columba/ristretto/imap/SearchKey;->list:Ljava/util/List;

    if-eqz v2, :cond_59

    .line 352
    iget-object v2, p0, Lorg/columba/ristretto/imap/SearchKey;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 353
    .local v0, it:Ljava/util/Iterator;
    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 354
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 355
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3f

    .line 357
    :cond_54
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 359
    .end local v0           #it:Ljava/util/Iterator;
    :cond_59
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toStringArray()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 297
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 298
    .local v2, result:Ljava/util/List;
    iget-object v3, p0, Lorg/columba/ristretto/imap/SearchKey;->list:Ljava/util/List;

    if-eqz v3, :cond_e

    .line 299
    const-string v3, "("

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_e
    iget-object v3, p0, Lorg/columba/ristretto/imap/SearchKey;->key:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v3, p0, Lorg/columba/ristretto/imap/SearchKey;->arg:Ljava/lang/Object;

    if-eqz v3, :cond_2c

    .line 304
    iget-object v3, p0, Lorg/columba/ristretto/imap/SearchKey;->arg:Ljava/lang/Object;

    instance-of v3, v3, Lorg/columba/ristretto/imap/SearchKey;

    if-eqz v3, :cond_6b

    .line 305
    iget-object v3, p0, Lorg/columba/ristretto/imap/SearchKey;->arg:Ljava/lang/Object;

    check-cast v3, Lorg/columba/ristretto/imap/SearchKey;

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/SearchKey;->toStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    :cond_2c
    :goto_2c
    iget-object v3, p0, Lorg/columba/ristretto/imap/SearchKey;->arg2:Ljava/lang/Object;

    if-eqz v3, :cond_45

    .line 311
    iget-object v3, p0, Lorg/columba/ristretto/imap/SearchKey;->arg2:Ljava/lang/Object;

    instance-of v3, v3, Lorg/columba/ristretto/imap/SearchKey;

    if-eqz v3, :cond_75

    .line 312
    iget-object v3, p0, Lorg/columba/ristretto/imap/SearchKey;->arg2:Ljava/lang/Object;

    check-cast v3, Lorg/columba/ristretto/imap/SearchKey;

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/SearchKey;->toStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 317
    :cond_45
    :goto_45
    iget-object v3, p0, Lorg/columba/ristretto/imap/SearchKey;->list:Ljava/util/List;

    if-eqz v3, :cond_8c

    .line 318
    iget-object v3, p0, Lorg/columba/ristretto/imap/SearchKey;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 320
    .local v0, it:Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 321
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 322
    .local v1, next:Ljava/lang/Object;
    instance-of v3, v1, Lorg/columba/ristretto/imap/SearchKey;

    if-eqz v3, :cond_7f

    .line 323
    check-cast v1, Lorg/columba/ristretto/imap/SearchKey;

    .end local v1           #next:Ljava/lang/Object;
    invoke-virtual {v1}, Lorg/columba/ristretto/imap/SearchKey;->toStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4f

    .line 307
    .end local v0           #it:Ljava/util/Iterator;
    :cond_6b
    iget-object v3, p0, Lorg/columba/ristretto/imap/SearchKey;->arg:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 314
    :cond_75
    iget-object v3, p0, Lorg/columba/ristretto/imap/SearchKey;->arg2:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 325
    .restart local v0       #it:Ljava/util/Iterator;
    .restart local v1       #next:Ljava/lang/Object;
    :cond_7f
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 328
    .end local v1           #next:Ljava/lang/Object;
    :cond_87
    const-string v3, ")"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    .end local v0           #it:Ljava/util/Iterator;
    :cond_8c
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method
