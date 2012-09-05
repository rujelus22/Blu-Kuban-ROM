.class public final Lcom/coremobility/app/vnotes/cq;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "Welcome to Voicemail"

    sput-object v0, Lcom/coremobility/app/vnotes/cq;->a:Ljava/lang/String;

    const-string v0, "About Voicemail-to-Text"

    sput-object v0, Lcom/coremobility/app/vnotes/cq;->b:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "duration"

    aput-object v1, v0, v3

    const-string v1, "record_id"

    aput-object v1, v0, v4

    const-string v1, "file_type"

    aput-object v1, v0, v5

    const-string v1, "filename_only"

    aput-object v1, v0, v6

    const-string v1, "file_size"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "file_order"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "transcribe_rate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mime_guid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/app/vnotes/cq;->c:[Ljava/lang/String;

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "dir_id"

    aput-object v1, v0, v4

    const-string v1, "sender_name"

    aput-object v1, v0, v5

    const-string v1, "sender_mdn"

    aput-object v1, v0, v6

    const-string v1, "sender_email"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "recipient_mdns"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "recipient_emails"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "previous_sender"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "guid"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "in_reply_to_guid"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "in_reply_to_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "out_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sent_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "recv_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "read_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "repl_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "fwd_timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "forward_to_guid"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "txt_summary"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "record_id"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "file_type"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "file_order"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "filename_only"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "file_size"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "transcribe_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "mime_guid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/app/vnotes/cq;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .registers 2

    if-nez p0, :cond_6

    const v0, 0x7f020057

    :goto_5
    return v0

    :cond_6
    const v0, 0x7f020056

    goto :goto_5
.end method

.method public static a(II)I
    .registers 5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_38

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->c()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_38

    :cond_19
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, p0, :cond_32

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_2f
    return v0

    :cond_30
    const/4 v0, -0x1

    goto :goto_2f

    :cond_32
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_38
    invoke-static {p0, p1}, Lcom/coremobility/app/vnotes/cq;->b(II)I

    move-result v0

    goto :goto_2f
.end method

.method public static a(IILandroid/app/Activity;)I
    .registers 16

    if-nez p2, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    invoke-static {p1}, Lcom/coremobility/app/vnotes/cf;->b(I)Z

    move-result v1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    if-eqz v0, :cond_1a

    if-nez v1, :cond_d6

    :cond_1a
    const/4 v0, 0x6

    const-string v1, "getNextUnheardAudioMsgId query executed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->l:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dir_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " & "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " == 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is_deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "out_timestamp DESC,_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v0, 0x6

    const-string v1, "getNextUnheardAudioMsgId query finished"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_97

    const/4 v0, 0x6

    const-string v1, "getNextUnheardAudioMsgId - no cursor"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    goto/16 :goto_3

    :cond_97
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_cc

    :cond_9d
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {p2, v1, p1}, Lcom/coremobility/app/vnotes/cq;->c(Landroid/content/Context;II)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_c0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Lcom/coremobility/app/vnotes/cq;->a(J)Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v0, v1

    goto/16 :goto_3

    :cond_c0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-nez v0, :cond_9d

    :goto_c6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v0, -0x1

    goto/16 :goto_3

    :cond_cc
    const/4 v0, 0x6

    const-string v1, "getNextUnheardAudioMsgId - No unheard messages left"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c6

    :cond_d6
    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->c()[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    :cond_ee
    :goto_ee
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_150

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->c()[J

    move-result-object v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->r()I

    move-result v8

    cmp-long v9, v6, v1

    if-gtz v9, :cond_11f

    cmp-long v9, v6, v1

    if-nez v9, :cond_ee

    :cond_11f
    const-wide v9, 0x7fffffffffffffffL

    cmp-long v9, v6, v9

    if-gtz v9, :cond_ee

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->b()J

    move-result-wide v9

    const-wide/16 v11, 0x2

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_ee

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->k()[I

    move-result-object v0

    const/4 v9, 0x0

    aget v0, v0, v9

    int-to-long v9, v0

    invoke-static {v9, v10}, Lcom/coremobility/app/vnotes/cq;->a(J)Z

    move-result v0

    if-eqz v0, :cond_ee

    if-eq v5, p0, :cond_ee

    if-ne v8, p1, :cond_ee

    new-instance v0, Lcom/coremobility/app/vnotes/bj;

    invoke-direct {v0, v5, v6, v7}, Lcom/coremobility/app/vnotes/bj;-><init>(IJ)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ee

    :cond_150
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->g()Lcom/coremobility/app/vnotes/bk;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_172

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/bj;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bj;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_3

    :cond_172
    const/4 v0, -0x1

    goto/16 :goto_3
.end method

.method public static declared-synchronized a(IIZLandroid/app/Activity;)I
    .registers 15

    const-class v3, Lcom/coremobility/app/vnotes/cq;

    monitor-enter v3

    if-nez p3, :cond_11

    const/4 v0, 0x6

    :try_start_6
    const-string v1, "replyToVnoteWithId - no activity"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_2b9

    const/4 v0, 0x4

    :goto_f
    monitor-exit v3

    return v0

    :cond_11
    if-eqz p0, :cond_16

    const/4 v0, -0x1

    if-ne p0, v0, :cond_32

    :cond_16
    const/4 v0, 0x6

    :try_start_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replyToVnoteWithId - bad ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    goto :goto_f

    :cond_32
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->j()Z

    move-result v0

    if-nez v0, :cond_3a

    const/4 v0, 0x5

    goto :goto_f

    :cond_3a
    if-nez p2, :cond_75

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dir_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "guid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sender_mdn"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sender_email"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_6f

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    invoke-static {p3, p0, v0}, Lcom/coremobility/app/vnotes/da;->a(Landroid/content/Context;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_62
    if-nez v0, :cond_ac

    const/4 v0, 0x6

    const-string v1, "replyToVnoteWithId - empty cursor "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    goto :goto_f

    :cond_6f
    const/4 v1, 0x3

    invoke-static {p3, v1, p0, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_62

    :cond_75
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dir_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "guid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sender_mdn"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sender_email"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "recipient_mdns"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "recipient_emails"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_a6

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    invoke-static {p3, p0, v0}, Lcom/coremobility/app/vnotes/da;->a(Landroid/content/Context;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_62

    :cond_a6
    const/4 v1, 0x3

    invoke-static {p3, v1, p0, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_62

    :cond_ac
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2b3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    if-eqz p2, :cond_de

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_de
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-eqz v7, :cond_1e8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e8

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_ed
    if-eqz p2, :cond_1b3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_144

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_12d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-static {v2, v9, v10}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, ""

    invoke-static {v2, v7, v9}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_12d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_144
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_199

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_182

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, ""

    invoke-static {v1, v2, v7}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, ""

    invoke-static {v1, v2, v7}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_199
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/cf;->q()Lcom/coremobility/app/vnotes/cp;

    move-result-object v1

    iget-object v1, v1, Lcom/coremobility/app/vnotes/cp;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b3

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1b3
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v2, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :goto_1bc
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_202

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d0

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1d0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1bc

    :cond_1e8
    if-eqz v8, :cond_1f6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f6

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_ed

    :cond_1f6
    const/4 v0, 0x6

    const-string v1, "Error: No sender address found"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    goto/16 :goto_f

    :cond_202
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_213

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_213
    int-to-long v1, v4

    const-wide/16 v7, 0x40

    and-long/2addr v1, v7

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-lez v1, :cond_240

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replyToVnoteWithId - vnote["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] has DONT_REPLY flag set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    goto/16 :goto_f

    :cond_240
    const/4 v1, 0x3

    if-eq v5, v1, :cond_26c

    const/4 v1, 0x5

    if-eq v5, v1, :cond_26c

    const/4 v1, 0x6

    if-eq v5, v1, :cond_26c

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replyToVnoteWithId - vnote["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not an inbox vnote"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    goto/16 :goto_f

    :cond_26c
    if-eqz p2, :cond_28a

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;

    invoke-direct {v1, p3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "reply_vnoteid"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "reply_to_guid"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "recip_addr"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto/16 :goto_f

    :cond_28a
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-direct {v1, p3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "record_form_display_mode"

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "reply_vnoteid"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "reply_to_guid"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "reply_to_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "auto_record"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto/16 :goto_f

    :cond_2b3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2b6
    .catchall {:try_start_17 .. :try_end_2b6} :catchall_2b9

    const/4 v0, 0x4

    goto/16 :goto_f

    :catchall_2b9
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static a(IZZ)I
    .registers 10

    const/16 v6, 0x2000

    const/16 v5, 0x40

    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_67

    if-eqz p2, :cond_2c

    and-int/lit8 v1, p0, 0x2

    if-ne v1, v3, :cond_14

    const v0, 0x7f020047

    :cond_13
    :goto_13
    return v0

    :cond_14
    and-int/lit8 v1, p0, 0x8

    if-ne v1, v4, :cond_1c

    const v0, 0x7f020047

    goto :goto_13

    :cond_1c
    and-int/lit8 v1, p0, 0x40

    if-ne v1, v5, :cond_24

    const v0, 0x7f020047

    goto :goto_13

    :cond_24
    and-int/lit16 v1, p0, 0x2000

    if-ne v1, v6, :cond_13

    const v0, 0x7f020047

    goto :goto_13

    :cond_2c
    and-int/lit8 v1, p0, 0x28

    const/16 v2, 0x28

    if-eq v1, v2, :cond_13

    and-int/lit8 v1, p0, 0x22

    const/16 v2, 0x22

    if-eq v1, v2, :cond_13

    and-int/lit8 v1, p0, 0x2

    if-ne v1, v3, :cond_40

    const v0, 0x7f020049

    goto :goto_13

    :cond_40
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_49

    const v0, 0x7f02004b

    goto :goto_13

    :cond_49
    and-int/lit8 v1, p0, 0x8

    if-ne v1, v4, :cond_51

    const v0, 0x7f02004f

    goto :goto_13

    :cond_51
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-eq v1, v2, :cond_13

    and-int/lit8 v1, p0, 0x40

    if-ne v1, v5, :cond_5f

    const v0, 0x7f02004d

    goto :goto_13

    :cond_5f
    and-int/lit16 v1, p0, 0x2000

    if-ne v1, v6, :cond_13

    const v0, 0x7f02004d

    goto :goto_13

    :cond_67
    if-eqz p2, :cond_89

    and-int/lit8 v1, p0, 0x2

    if-ne v1, v3, :cond_71

    const v0, 0x7f02004a

    goto :goto_13

    :cond_71
    and-int/lit8 v1, p0, 0x8

    if-ne v1, v4, :cond_79

    const v0, 0x7f020050

    goto :goto_13

    :cond_79
    and-int/lit8 v1, p0, 0x40

    if-ne v1, v5, :cond_81

    const v0, 0x7f020048

    goto :goto_13

    :cond_81
    and-int/lit16 v1, p0, 0x2000

    if-ne v1, v6, :cond_13

    const v0, 0x7f020048

    goto :goto_13

    :cond_89
    and-int/lit8 v1, p0, 0x28

    const/16 v2, 0x28

    if-eq v1, v2, :cond_13

    and-int/lit8 v1, p0, 0x22

    const/16 v2, 0x22

    if-eq v1, v2, :cond_13

    and-int/lit8 v1, p0, 0x2

    if-ne v1, v3, :cond_9e

    const v0, 0x7f02004a

    goto/16 :goto_13

    :cond_9e
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a8

    const v0, 0x7f02004c

    goto/16 :goto_13

    :cond_a8
    and-int/lit8 v1, p0, 0x8

    if-ne v1, v4, :cond_b1

    const v0, 0x7f020050

    goto/16 :goto_13

    :cond_b1
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-eq v1, v2, :cond_13

    and-int/lit8 v1, p0, 0x40

    if-ne v1, v5, :cond_c0

    const v0, 0x7f02004e

    goto/16 :goto_13

    :cond_c0
    and-int/lit16 v1, p0, 0x2000

    if-ne v1, v6, :cond_13

    const v0, 0x7f02004e

    goto/16 :goto_13
.end method

.method public static declared-synchronized a(Landroid/content/Context;II)I
    .registers 8

    const-class v2, Lcom/coremobility/app/vnotes/cq;

    monitor-enter v2

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_15

    :try_start_7
    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->a()Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->a()Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->b()Landroid/database/Cursor;

    move-result-object v0

    :cond_15
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4e

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->c()Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    :goto_27
    if-eqz v1, :cond_46

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x0

    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    :cond_36
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_4b

    move-result v4

    if-ne v4, p1, :cond_3e

    :goto_3c
    monitor-exit v2

    return v0

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    :try_start_40
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_36

    :cond_46
    invoke-static {p0, p1, p2}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;II)I
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_4b

    move-result v0

    goto :goto_3c

    :catchall_4b
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4e
    move-object v1, v0

    goto :goto_27
.end method

.method public static a(Landroid/content/Context;ILjava/util/List;)I
    .registers 15

    const/4 v7, 0x6

    const/4 v11, 0x3

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/coremobility/k/z;

    invoke-direct {v2, v3, p1, v0}, Lcom/coremobility/k/z;-><init>(IILjava/lang/String;)V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    const-string v2, "deleteVnotes delete started"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v7, v2, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    if-ne p1, v2, :cond_c4

    sget-object v2, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->C:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move v1, v0

    :goto_63
    const-string v0, "deleteVnotes delete ended"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-lez v1, :cond_e4

    if-ne p1, v11, :cond_ed

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    iget v0, v0, Lcom/coremobility/app/vnotes/cf;->h:I

    if-ltz v0, :cond_7f

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    iget v2, v0, Lcom/coremobility/app/vnotes/cf;->h:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/coremobility/app/vnotes/cf;->h:I

    :cond_7f
    move v4, v3

    :goto_80
    if-ge v4, v1, :cond_d0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, v5, v10}, Lcom/coremobility/app/vnotes/cf;->a(IZ)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    if-eqz v0, :cond_101

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cf;->c(Ljava/lang/String;)Z

    move-result v2

    if-ne p1, v11, :cond_b8

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->b()J

    move-result-wide v6

    const-wide/32 v8, -0x8001

    and-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lcom/coremobility/app/vnotes/ka;->b(J)V

    :cond_b8
    move v0, v2

    :goto_b9
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v2

    invoke-virtual {v2, v5, v3, v0}, Lcom/coremobility/app/vnotes/cf;->a(IZZ)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_80

    :cond_c4
    sget-object v2, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->s:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move v1, v0

    goto :goto_63

    :cond_d0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-static {v3, v10, v3}, Lcom/coremobility/app/vnotes/cf;->a(ZZZ)V

    :cond_d6
    :goto_d6
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->f()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->w()V

    :cond_e4
    new-instance v0, Lcom/coremobility/k/be;

    invoke-direct {v0, v10}, Lcom/coremobility/k/be;-><init>(Z)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    return v1

    :cond_ed
    if-ne p1, v10, :cond_d6

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    iget v0, v0, Lcom/coremobility/app/vnotes/cf;->i:I

    if-ltz v0, :cond_d6

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    iget v2, v0, Lcom/coremobility/app/vnotes/cf;->i:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/coremobility/app/vnotes/cf;->i:I

    goto :goto_d6

    :cond_101
    move v0, v3

    goto :goto_b9
.end method

.method public static a(Landroid/content/Context;Lcom/coremobility/app/vnotes/ct;I)I
    .registers 14

    const/4 v8, 0x6

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-array v2, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v6

    iget-object v1, p1, Lcom/coremobility/app/vnotes/ct;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-wide v7, p1, Lcom/coremobility/app/vnotes/ct;->o:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-nez v1, :cond_3d

    move v1, v0

    :goto_1b
    if-eqz v1, :cond_3f

    iget-object v3, p1, Lcom/coremobility/app/vnotes/ct;->v:Ljava/lang/String;

    invoke-static {v3}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3f

    :goto_25
    if-eqz v0, :cond_41

    sget-object v0, Lcom/coremobility/app/vnotes/cq;->b:Ljava/lang/String;

    invoke-static {p0, p2, v0, v2}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :cond_2d
    :goto_2d
    if-eqz v4, :cond_d8

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_39
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :goto_3c
    return v0

    :cond_3d
    move v1, v6

    goto :goto_1b

    :cond_3f
    move v0, v6

    goto :goto_25

    :cond_41
    if-eqz v1, :cond_2d

    sget-object v0, Lcom/coremobility/app/vnotes/cq;->a:Ljava/lang/String;

    invoke-static {p0, p2, v0, v2}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_2d

    :cond_4a
    iget-object v3, p1, Lcom/coremobility/app/vnotes/ct;->j:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Vnote Guid Query for ID: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v8, v1, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x5

    if-ne p2, v1, :cond_a4

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->x:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "guid=\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "dir_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_9b
    const-string v1, "Vnote Guid Query ended"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v0

    goto :goto_2d

    :cond_a4
    sget-object v1, Lcom/coremobility/app/vnotes/cf;->l:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "guid=\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "dir_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_9b

    :cond_d5
    move v0, v6

    goto/16 :goto_39

    :cond_d8
    move v0, v6

    goto/16 :goto_3c
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 10

    const/4 v7, 0x6

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_18
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_37

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_37
    const-string v3, "restoreVnotes restore started"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v7, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "dir_id"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v4, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->v:Landroid/net/Uri;

    invoke-static {v4, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v0, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :goto_5c
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/ContentResolver;I)V

    goto :goto_5c

    :cond_70
    const-string v0, "restoreVnotes restore ended"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_78
    move-object v0, p1

    goto :goto_18
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coremobility/integration/h/c;)I
    .registers 14

    const/4 v6, 0x6

    const/4 v1, 0x0

    new-instance v0, Lcom/coremobility/k/y;

    invoke-direct {v0, p1, p3, p2, p4}, Lcom/coremobility/k/y;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "dir_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "sender_name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "recipient_mdns"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "guid"

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "in_reply_to_guid"

    invoke-virtual {v3, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "in_reply_to_name"

    invoke-virtual {v3, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "status"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "sent_timestamp"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "recv_timestamp"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "read_timestamp"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "repl_timestamp"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "fwd_timestamp"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "forward_to_guid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "subject"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "previous_sender"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "uri"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "VnoteCreate insert started"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v6, v2, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->l:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    sget-object v2, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->k:Landroid/net/Uri;

    const-string v3, "VnoteCreate insert ended"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v6, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v2

    if-nez v2, :cond_cb

    const-string v0, "VNOTES PROVIDER - Insert Vnotes Failed! "

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xb

    iput v0, p6, Lcom/coremobility/integration/h/c;->a:I

    new-instance v0, Lcom/coremobility/k/bd;

    iget v2, p6, Lcom/coremobility/integration/h/c;->a:I

    invoke-direct {v0, v1, v2}, Lcom/coremobility/k/bd;-><init>(II)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    move v0, v1

    :goto_ca
    return v0

    :cond_cb
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VNOTES PROVIDER - Insert Vnotes Successful - ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v2, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/coremobility/k/bd;

    iget v2, p6, Lcom/coremobility/integration/h/c;->a:I

    invoke-direct {v1, v0, v2}, Lcom/coremobility/k/bd;-><init>(II)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto :goto_ca
.end method

.method public static a(Z)I
    .registers 3

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->m()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz p0, :cond_13

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->n()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    return v0
.end method

.method public static a(ZZ)I
    .registers 3

    if-eqz p0, :cond_7

    sget-object v0, Lcom/coremobility/app/vnotes/cu;->a:Lcom/coremobility/app/vnotes/cu;

    iget v0, v0, Lcom/coremobility/app/vnotes/cu;->e:I

    :goto_6
    return v0

    :cond_7
    if-eqz p1, :cond_e

    sget-object v0, Lcom/coremobility/app/vnotes/cu;->d:Lcom/coremobility/app/vnotes/cu;

    iget v0, v0, Lcom/coremobility/app/vnotes/cu;->e:I

    goto :goto_6

    :cond_e
    sget-object v0, Lcom/coremobility/app/vnotes/cu;->c:Lcom/coremobility/app/vnotes/cu;

    iget v0, v0, Lcom/coremobility/app/vnotes/cu;->e:I

    goto :goto_6
.end method

.method public static a(Lcom/coremobility/app/vnotes/cs;I)Landroid/content/ContentValues;
    .registers 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "record_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "file_type"

    iget v2, p0, Lcom/coremobility/app/vnotes/cs;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "file_order"

    iget v2, p0, Lcom/coremobility/app/vnotes/cs;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "filename_only"

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cs;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "file_size"

    iget v2, p0, Lcom/coremobility/app/vnotes/cs;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "duration"

    iget v2, p0, Lcom/coremobility/app/vnotes/cs;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "transcribe_rate"

    iget v2, p0, Lcom/coremobility/app/vnotes/cs;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "mime_guid"

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cs;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/coremobility/app/vnotes/ct;)Landroid/content/ContentValues;
    .registers 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "dir_id"

    iget v2, p0, Lcom/coremobility/app/vnotes/ct;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "sender_name"

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ct;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sender_mdn"

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ct;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sender_email"

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ct;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "recipient_mdns"

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ct;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "recipient_emails"

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ct;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "guid"

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ct;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "in_reply_to_guid"

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ct;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "in_reply_to_name"

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ct;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    iget v2, p0, Lcom/coremobility/app/vnotes/ct;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "out_timestamp"

    iget-wide v2, p0, Lcom/coremobility/app/vnotes/ct;->o:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "sent_timestamp"

    iget-wide v2, p0, Lcom/coremobility/app/vnotes/ct;->p:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "recv_timestamp"

    iget-wide v2, p0, Lcom/coremobility/app/vnotes/ct;->q:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "read_timestamp"

    iget-wide v2, p0, Lcom/coremobility/app/vnotes/ct;->r:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "repl_timestamp"

    iget-wide v2, p0, Lcom/coremobility/app/vnotes/ct;->s:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "fwd_timestamp"

    iget-wide v2, p0, Lcom/coremobility/app/vnotes/ct;->t:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "forward_to_guid"

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ct;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "txt_summary"

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ct;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "subject"

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ct;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "previous_sender"

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ct;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uri"

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ct;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    const/4 v7, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vnote Query for ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x5

    if-ne p1, v1, :cond_74

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->B:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is_deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "record_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_6c
    const-string v1, "Vnote Query ended"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_74
    sget-object v1, Lcom/coremobility/app/vnotes/cf;->r:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is_deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "record_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_6c
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vnote Sender Query for ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x5

    if-ne p1, v1, :cond_5b

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->x:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sender_name=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dir_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_53
    const-string v1, "Vnote Sender Query ended"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_5b
    sget-object v1, Lcom/coremobility/app/vnotes/cf;->l:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sender_name=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dir_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_53
.end method

.method public static a(Landroid/content/Context;I[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    const/4 v0, 0x3

    invoke-static {p0, v0, p1, p2}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_7

    move-object v0, v1

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->h()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_cf

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_1d
    if-nez v0, :cond_6

    :try_start_1f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_a4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1f .. :try_end_26} :catch_cc

    move-result-object v2

    if-eqz v2, :cond_61

    :try_start_29
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->h()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_29 .. :try_end_3d} :catchall_ca
    .catch Ljava/lang/OutOfMemoryError; {:try_start_29 .. :try_end_3d} :catch_7d

    :goto_3d
    if-eqz v2, :cond_6

    :try_start_3f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_6

    :catch_43
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContactPhoto "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_61
    :try_start_61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020086

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->h()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7c
    .catchall {:try_start_61 .. :try_end_7c} :catchall_ca
    .catch Ljava/lang/OutOfMemoryError; {:try_start_61 .. :try_end_7c} :catch_7d

    goto :goto_3d

    :catch_7d
    move-exception v0

    move-object v0, v2

    :goto_7f
    if-eqz v0, :cond_84

    :try_start_81
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_86

    :cond_84
    :goto_84
    move-object v0, v1

    goto :goto_6

    :catch_86
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContactPhoto "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_84

    :catchall_a4
    move-exception v0

    move-object v2, v1

    :goto_a6
    if-eqz v2, :cond_ab

    :try_start_a8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac

    :cond_ab
    :goto_ab
    throw v0

    :catch_ac
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContactPhoto "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ab

    :catchall_ca
    move-exception v0

    goto :goto_a6

    :catch_cc
    move-exception v0

    move-object v0, v1

    goto :goto_7f

    :cond_cf
    move-object v0, v1

    goto/16 :goto_1d
.end method

.method public static a(Landroid/content/Context;Lcom/coremobility/integration/f/b;I)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v5, 0x0

    const v2, 0x7f020090

    const v3, 0x7f020086

    sget-object v0, Lcom/coremobility/app/vnotes/cu;->a:Lcom/coremobility/app/vnotes/cu;

    iget v0, v0, Lcom/coremobility/app/vnotes/cu;->e:I

    if-eq p2, v0, :cond_19

    sget-object v0, Lcom/coremobility/app/vnotes/cu;->d:Lcom/coremobility/app/vnotes/cu;

    iget v0, v0, Lcom/coremobility/app/vnotes/cu;->e:I

    if-eq p2, v0, :cond_19

    sget-object v0, Lcom/coremobility/app/vnotes/cu;->b:Lcom/coremobility/app/vnotes/cu;

    iget v0, v0, Lcom/coremobility/app/vnotes/cu;->e:I

    if-ne p2, v0, :cond_31

    :cond_19
    const/4 v0, 0x1

    move v1, v0

    :goto_1b
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->F()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v1, :cond_34

    move v0, v2

    :goto_2c
    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_30
    :goto_30
    return-object v0

    :cond_31
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1b

    :cond_34
    move v0, v3

    goto :goto_2c

    :cond_36
    if-nez v1, :cond_3a

    if-nez p1, :cond_70

    :cond_3a
    if-eqz v1, :cond_6a

    const-string v0, "welcome"

    move-object v4, v0

    :goto_3f
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->h()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_51
    if-nez v0, :cond_30

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v1, :cond_6e

    :goto_59
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->h()Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :cond_6a
    const-string v0, "unknown"

    move-object v4, v0

    goto :goto_3f

    :cond_6e
    move v2, v3

    goto :goto_59

    :cond_70
    if-eqz p1, :cond_79

    iget-object v0, p1, Lcom/coremobility/integration/f/b;->c:Landroid/net/Uri;

    :goto_74
    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_30

    :cond_79
    move-object v0, v5

    goto :goto_74

    :cond_7b
    move-object v0, v5

    goto :goto_51
.end method

.method private static a(Ljava/lang/String;Z)Landroid/net/Uri;
    .registers 15

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c8

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_15
    :try_start_15
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez p1, :cond_cc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "smvvm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_81
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v7, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v8, v1, [B

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_11f

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_11d

    array-length v1, v9

    :goto_a3
    const/4 v2, 0x0

    :goto_a4
    if-ge v2, v1, :cond_11f

    aget-object v10, v9, v2

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    const/4 v10, 0x6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deleting old file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_c5} :catch_f5

    add-int/lit8 v2, v2, 0x1

    goto :goto_a4

    :cond_c8
    const-string v0, ""

    goto/16 :goto_15

    :cond_cc
    :try_start_cc
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_f4} :catch_f5

    goto :goto_81

    :catch_f5
    move-exception v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file copy of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed with exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_11d
    const/4 v1, 0x0

    goto :goto_a3

    :cond_11f
    :try_start_11f
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_137

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_137

    const/4 v0, 0x6

    const-string v1, "Unable to create temp directory in SD card"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_137
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/VN-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rws"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_171} :catch_f5

    move-result-object v0

    goto/16 :goto_7
.end method

.method public static a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;
    .registers 15

    const/4 v12, 0x7

    const/4 v11, 0x6

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/coremobility/integration/f/a;->a()Lcom/coremobility/integration/f/a;

    new-instance v5, Lcom/coremobility/integration/f/b;

    invoke-direct {v5}, Lcom/coremobility/integration/f/b;-><init>()V

    const/16 v0, 0x8

    new-array v7, v0, [Ljava/lang/String;

    new-array v8, v1, [Ljava/lang/String;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1c

    :cond_1b
    :goto_1b
    return-object v4

    :cond_1c
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->e()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jz;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/jz;->c()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/jz;->a()Lcom/coremobility/integration/f/b;

    move-result-object v1

    if-eqz v1, :cond_1b

    if-eqz p1, :cond_3c

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/jz;->b()I

    move-result v1

    aput v1, p1, v2

    :cond_3c
    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/jz;->a()Lcom/coremobility/integration/f/b;

    move-result-object v4

    goto :goto_1b

    :cond_41
    invoke-static {p0}, Lcom/coremobility/j/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_181

    const-string v0, "+1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ac

    aput-object p0, v7, v2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move v0, v1

    :goto_56
    const-string v3, " ()-+"

    invoke-static {p0, v3}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v12, :cond_1b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v6, v9, :cond_6d

    move-object v3, v4

    :cond_6d
    move v6, v1

    :goto_6e
    if-eqz v6, :cond_268

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->k()Ljava/lang/String;

    move-result-object v6

    aput-object p0, v7, v0

    add-int/lit8 v0, v0, 0x1

    if-eqz v3, :cond_7e

    aput-object v3, v7, v0

    add-int/lit8 v0, v0, 0x1

    :cond_7e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_188

    :goto_84
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_94

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xb

    if-ne v8, v9, :cond_a9

    :cond_94
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x31

    if-ne v8, v9, :cond_a9

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    :cond_a9
    if-eqz v6, :cond_c7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_18b

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18b

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    :cond_c7
    :goto_c7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v12, :cond_1ed

    if-eqz v6, :cond_1ed

    new-instance v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    :cond_e9
    :goto_e9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v12, :cond_21a

    if-eqz v6, :cond_21a

    new-instance v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    :cond_111
    :goto_111
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_240

    new-instance v6, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v7, v0

    :cond_133
    :goto_133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking up "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "in phonebook"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v11, v0, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x1e

    invoke-static {v7, v0, v5}, Lcom/coremobility/integration/f/a;->a([Ljava/lang/String;ILcom/coremobility/integration/f/b;)I

    iget-boolean v0, v5, Lcom/coremobility/integration/f/b;->e:Z

    if-eqz v0, :cond_2a8

    move v0, v1

    move-object v3, p0

    :goto_15c
    if-eqz v0, :cond_293

    const-string v0, "Contact was found."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v11, v0, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_16b

    iget v0, v5, Lcom/coremobility/integration/f/b;->g:I

    aput v0, p1, v2

    :cond_16b
    new-instance v0, Lcom/coremobility/app/vnotes/jz;

    invoke-direct {v0, v5, v1}, Lcom/coremobility/app/vnotes/jz;-><init>(Lcom/coremobility/integration/f/b;Z)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->e()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->e()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v5

    goto/16 :goto_1b

    :cond_181
    aput-object p0, v8, v2

    move v0, v2

    move v6, v2

    move-object v3, v4

    goto/16 :goto_6e

    :cond_188
    move-object v3, p0

    goto/16 :goto_84

    :cond_18b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xb

    if-ne v8, v9, :cond_1bc

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1bc

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c7

    :cond_1bc
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xc

    if-ne v8, v9, :cond_c7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c7

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x5

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c7

    :cond_1ed
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xb

    if-ne v8, v9, :cond_1ff

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e9

    :cond_1ff
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xc

    if-ne v8, v9, :cond_e9

    const-string v8, "+1"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e9

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e9

    :cond_21a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_111

    new-instance v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_111

    :cond_240
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v12, :cond_133

    if-eqz v6, :cond_133

    new-instance v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v0

    goto/16 :goto_133

    :cond_268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking up "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "in phonebook"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v11, v0, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x8

    invoke-static {v8, v0, v5}, Lcom/coremobility/integration/f/a;->a([Ljava/lang/String;ILcom/coremobility/integration/f/b;)I

    iget-boolean v0, v5, Lcom/coremobility/integration/f/b;->e:Z

    if-eqz v0, :cond_2a8

    move v0, v1

    move-object v3, p0

    goto/16 :goto_15c

    :cond_293
    const-string v0, "Contact was not found."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/app/vnotes/jz;

    invoke-direct {v0, v4, v2}, Lcom/coremobility/app/vnotes/jz;-><init>(Lcom/coremobility/integration/f/b;Z)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->e()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b

    :cond_2a8
    move v0, v2

    move-object v3, v4

    goto/16 :goto_15c

    :cond_2ac
    move v0, v2

    goto/16 :goto_56
.end method

.method public static a(IZ)Ljava/lang/String;
    .registers 6

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->c()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-boolean v1, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v1, :cond_16

    const v1, 0x1869f

    if-eq p0, v1, :cond_16

    const/4 v1, -0x1

    if-ne p0, v1, :cond_19

    :cond_16
    const-string v0, ""

    :goto_18
    return-object v0

    :cond_19
    if-eqz p1, :cond_28

    :try_start_1b
    invoke-virtual {v0, p0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/jy;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_28
    invoke-virtual {v0, p0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/jy;->a:Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_30} :catch_31

    goto :goto_18

    :catch_31
    move-exception v0

    const-string v1, "SUP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in getAddressFromLineType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    goto :goto_18
.end method

.method public static a(Landroid/app/Activity;I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_26

    :goto_4
    return-object v0

    :sswitch_5
    const v0, 0x7f0c01ea

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :sswitch_d
    const v0, 0x7f0c01eb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :sswitch_15
    const v0, 0x7f0c01e8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :sswitch_1d
    const v0, 0x7f0c01e9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    nop

    :sswitch_data_26
    .sparse-switch
        0x3 -> :sswitch_15
        0x4 -> :sswitch_5
        0x5 -> :sswitch_d
        0xe -> :sswitch_1d
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    packed-switch p1, :pswitch_data_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c0020

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_21
    return-object v0

    :pswitch_22
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_22
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    and-int/lit8 v0, p1, 0x28

    const/16 v1, 0x28

    if-ne v0, v1, :cond_9

    const-string p2, ""

    :cond_8
    :goto_8
    return-object p2

    :cond_9
    and-int/lit8 v0, p1, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_12

    const-string p2, ""

    goto :goto_8

    :cond_12
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    const v0, 0x7f0c0104

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    :cond_1f
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    const v0, 0x7f0c0106

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    :cond_2c
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3a

    const v0, 0x7f0c0105

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    :cond_3a
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_43

    const-string p2, ""

    goto :goto_8

    :cond_43
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_51

    const v0, 0x7f0c0107

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    :cond_51
    and-int/lit16 v0, p1, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_8

    const-string p2, ""

    goto :goto_8
.end method

.method public static a(Landroid/content/Context;JJ)Ljava/lang/String;
    .registers 16

    const-wide/16 v9, 0x3c

    const-wide/16 v0, 0x0

    const/4 v8, 0x1

    if-nez p0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    sub-long v2, p3, p1

    const-wide/32 v4, 0x15180

    div-long v4, v2, v4

    long-to-int v4, v4

    const-wide/16 v5, 0xe10

    div-long v5, v2, v5

    long-to-int v5, v5

    div-long v6, v2, v9

    long-to-int v6, v6

    cmp-long v7, v2, v9

    if-gez v7, :cond_65

    cmp-long v4, v2, v0

    if-gez v4, :cond_133

    :goto_21
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_46

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0013

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0014

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_65
    const/16 v0, 0x3c

    if-ge v6, v0, :cond_ab

    if-ne v6, v8, :cond_8b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0015

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_8b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_ab
    const/16 v0, 0x18

    if-ge v5, v0, :cond_f1

    if-ne v5, v8, :cond_d1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0017

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_d1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0018

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_f1
    if-ne v4, v8, :cond_113

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0011

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0012

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_133
    move-wide v0, v2

    goto/16 :goto_21
.end method

.method public static a(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    const-string v1, "sender_name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2d

    :goto_1a
    if-nez v0, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_38

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_2d
    invoke-static {v2, v0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/integration/f/b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_36
    move-object v0, v1

    goto :goto_9

    :cond_38
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_43
    move-object v0, v2

    goto :goto_9
.end method

.method public static a(Lcom/coremobility/integration/f/b;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_15

    iget-boolean v0, p0, Lcom/coremobility/integration/f/b;->e:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/coremobility/integration/f/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/coremobility/integration/f/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/coremobility/integration/f/b;->a:Ljava/lang/String;

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static a(Lcom/coremobility/k/de;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->b(Lcom/coremobility/k/de;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    const-string v2, "unknown@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_1e
    if-nez v1, :cond_3b

    :goto_20
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/coremobility/k/de;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_44

    invoke-virtual {p0}, Lcom/coremobility/k/de;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3b
    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/integration/f/b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_44
    if-nez v1, :cond_49

    const-string v0, ""

    goto :goto_3

    :cond_49
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_54
    move-object v0, v1

    goto :goto_3
.end method

.method public static a(Lcom/coremobility/l/an;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_18

    iget-object v0, p0, Lcom/coremobility/l/an;->b:Ljava/util/Vector;

    if-eqz v0, :cond_18

    invoke-static {p0}, Lcom/coremobility/l/ah;->a(Lcom/coremobility/l/an;)Lcom/coremobility/l/aj;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_13

    iget-object v0, v1, Lcom/coremobility/l/aj;->f:Ljava/util/Vector;

    invoke-static {v0}, Lcom/coremobility/l/ah;->a(Ljava/util/Vector;)Lcom/coremobility/l/ak;

    move-result-object v0

    :cond_13
    if-eqz v0, :cond_18

    iget-object v0, v0, Lcom/coremobility/l/ak;->b:Ljava/lang/String;

    :goto_17
    return-object v0

    :cond_18
    const-string v0, ""

    goto :goto_17
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1b
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_72

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1b

    :cond_4e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_10c

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_72
    :goto_72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_72

    :cond_a5
    :goto_a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a5

    :cond_d8
    :goto_d8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_d8

    :cond_10b
    return-object p0

    :cond_10c
    move-object v0, p1

    goto/16 :goto_1b
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-ge v1, v2, :cond_29

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2d
    return-object v0
.end method

.method public static a()Ljava/util/HashMap;
    .registers 1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/coremobility/app/vnotes/kf;)Ljava/util/Vector;
    .registers 5

    const/4 v2, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kf;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    move v1, v2

    :goto_f
    iget-object v0, p0, Lcom/coremobility/app/vnotes/kf;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kf;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/kg;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_26
    iget-object v0, p0, Lcom/coremobility/app/vnotes/kf;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_40

    :goto_2a
    iget-object v0, p0, Lcom/coremobility/app/vnotes/kf;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_40

    iget-object v0, p0, Lcom/coremobility/app/vnotes/kf;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/kg;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_40
    move-object v0, v3

    goto :goto_4
.end method

.method public static a(IIILandroid/app/Activity;)V
    .registers 14

    const-wide/16 v8, 0x2000

    const-wide/16 v6, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/coremobility/k/aa;

    invoke-direct {v0, p1, p2}, Lcom/coremobility/k/aa;-><init>(II)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    if-nez p3, :cond_22

    const/4 v0, 0x6

    const-string v1, "forwardVnoteWithId - no activity "

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/k/bf;

    invoke-direct {v0, v2}, Lcom/coremobility/k/bf;-><init>(Z)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    const/4 v0, 0x0

    const/4 v3, 0x5

    if-eq p0, v3, :cond_34

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    :cond_34
    if-eqz v0, :cond_67

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->b()J

    move-result-wide v3

    and-long/2addr v3, v8

    cmp-long v0, v3, v6

    if-lez v0, :cond_65

    move v0, v1

    :goto_40
    packed-switch p2, :pswitch_data_a8

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;

    invoke-direct {v2, p3, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "forward_vnotedir"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "forward_vnoteid"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "urgency"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p3, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_5c
    new-instance v0, Lcom/coremobility/k/bf;

    invoke-direct {v0, v1}, Lcom/coremobility/k/bf;-><init>(Z)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto :goto_21

    :cond_65
    move v0, v2

    goto :goto_40

    :cond_67
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "status"

    aput-object v3, v0, v2

    invoke-static {p3, p0, p1, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_7d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_21

    :cond_7d
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v8

    cmp-long v3, v3, v6

    if-lez v3, :cond_88

    move v2, v1

    :cond_88
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v2

    goto :goto_40

    :pswitch_8d
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;

    invoke-direct {v2, p3, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "forward_vnotedir"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "forward_vnoteid"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "urgency"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p3, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5c

    nop

    :pswitch_data_a8
    .packed-switch 0x2
        :pswitch_8d
    .end packed-switch
.end method

.method public static a(IILcom/coremobility/integration/h/c;)V
    .registers 13

    const/16 v9, 0xb

    const/4 v8, 0x4

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->l()Z

    move-result v0

    if-nez v0, :cond_c

    iput v9, p2, Lcom/coremobility/integration/h/c;->a:I

    :goto_b
    return-void

    :cond_c
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    sget-object v1, Lcom/coremobility/integration/app/k;->B:Landroid/net/Uri;

    sget-object v2, Lcom/coremobility/app/vnotes/cq;->d:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dir_id=5 AND _id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "record_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is_deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "out_timestamp DESC,_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_a8

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a5

    :cond_69
    new-instance v1, Lcom/coremobility/app/vnotes/cs;

    invoke-direct {v1}, Lcom/coremobility/app/vnotes/cs;-><init>()V

    invoke-static {v7, v1}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/database/Cursor;Lcom/coremobility/app/vnotes/cs;)V

    iget v0, v1, Lcom/coremobility/app/vnotes/cs;->a:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9e

    iget v0, v1, Lcom/coremobility/app/vnotes/cs;->a:I

    invoke-static {p1, v0}, Lcom/coremobility/app/vnotes/cq;->e(II)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v1, Lcom/coremobility/app/vnotes/cs;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    iput-object v2, v1, Lcom/coremobility/app/vnotes/cs;->c:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v0

    iget v3, v1, Lcom/coremobility/app/vnotes/cs;->a:I

    iget v4, v1, Lcom/coremobility/app/vnotes/cs;->e:I

    iget v5, v1, Lcom/coremobility/app/vnotes/cs;->d:I

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;ILjava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_9e

    iput v9, p2, Lcom/coremobility/integration/h/c;->a:I

    :goto_99
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b

    :cond_9e
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_99

    :cond_a5
    iput v8, p2, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_99

    :cond_a8
    iput v8, p2, Lcom/coremobility/integration/h/c;->a:I

    goto/16 :goto_b
.end method

.method public static declared-synchronized a(IIZZLandroid/app/Activity;)V
    .registers 12

    const-class v6, Lcom/coremobility/app/vnotes/cq;

    monitor-enter v6

    const/4 v3, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    :try_start_9
    invoke-static/range {v0 .. v5}, Lcom/coremobility/app/vnotes/cq;->a(IIZZZLandroid/app/Activity;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    monitor-exit v6

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized a(IIZZZLandroid/app/Activity;)V
    .registers 9

    const-class v1, Lcom/coremobility/app/vnotes/cq;

    monitor-enter v1

    if-nez p5, :cond_7

    :goto_5
    monitor-exit v1

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-direct {v0, p5, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "vnoteid"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "autoplay"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "single_view"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "use_filter"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "vnotedir"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p5, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_2b

    goto :goto_5

    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 6

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->q()Lcom/coremobility/app/vnotes/cp;

    move-result-object v0

    iget-object v0, v0, Lcom/coremobility/app/vnotes/cp;->d:Ljava/lang/String;

    if-eqz v0, :cond_33

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_33
    return-void
.end method

.method public static a(Landroid/app/Activity;II)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "record_form_display_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_15

    const-string v1, "record_greeting_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_15
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/coremobility/app/vnotes/be;)V
    .registers 7

    const/16 v4, 0x73

    const/16 v3, 0x72

    const/16 v2, 0x71

    const/16 v1, 0x70

    if-nez p0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->K()I

    move-result v0

    packed-switch v0, :pswitch_data_44

    goto :goto_a

    :pswitch_13
    if-eqz p1, :cond_1b

    sget v0, Lcom/coremobility/app/vnotes/be;->e:I

    invoke-virtual {p1, v3, v0}, Lcom/coremobility/app/vnotes/be;->a(II)V

    goto :goto_a

    :cond_1b
    invoke-virtual {p0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_a

    :pswitch_1f
    if-eqz p1, :cond_27

    sget v0, Lcom/coremobility/app/vnotes/be;->e:I

    invoke-virtual {p1, v4, v0}, Lcom/coremobility/app/vnotes/be;->a(II)V

    goto :goto_a

    :cond_27
    invoke-virtual {p0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_a

    :pswitch_2b
    if-eqz p1, :cond_33

    sget v0, Lcom/coremobility/app/vnotes/be;->e:I

    invoke-virtual {p1, v1, v0}, Lcom/coremobility/app/vnotes/be;->a(II)V

    goto :goto_a

    :cond_33
    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_a

    :pswitch_37
    if-eqz p1, :cond_3f

    sget v0, Lcom/coremobility/app/vnotes/be;->e:I

    invoke-virtual {p1, v2, v0}, Lcom/coremobility/app/vnotes/be;->a(II)V

    goto :goto_a

    :cond_3f
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_a

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1f
        :pswitch_2b
        :pswitch_37
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 12

    const/4 v9, 0x2

    const/4 v8, 0x1

    const v5, 0x7f07000e

    const/4 v7, 0x6

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/16 v0, 0x64

    invoke-static {p0, v0, v6}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/app/Activity;II)V

    const-string v0, "launch voice sms compose activity "

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4d
    :goto_4d
    return-void

    :cond_4e
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    const-string v0, "launch google voice recognition for sms body"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const v0, 0x7f0c02a6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {p0, v0, v1}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_4d

    :cond_68
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const-string v0, "launch google voice recognition for email body"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const v0, 0x7f0c02a7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {p0, v0, v1}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_4d

    :cond_82
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-static {p0, v9}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/app/Activity;I)V

    const-string v0, "launch face book  social activity "

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4d

    :cond_93
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static {p0, v8}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/app/Activity;I)V

    const-string v0, "launch twitter social activity "

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4d
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.speech.extra.PROMPT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.speech.extra.MAX_RESULTS"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "description"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;I)V
    .registers 8

    sget-object v1, Lcom/coremobility/integration/app/k;->r:Landroid/net/Uri;

    sget-object v2, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "dir_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "is_deleted"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "record_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "out_timestamp DESC,_id DESC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_76

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->c(Landroid/database/Cursor;)Lcom/coremobility/k/de;

    move-result-object v1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/de;)V

    :cond_73
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_76
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 8

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->f()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v1

    if-ne v0, v1, :cond_45

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->a()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v2, v3, v4, v0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/util/HashMap;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :cond_45
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/app/k;->r:Landroid/net/Uri;

    sget-object v2, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a:[Ljava/lang/String;

    const-string v3, "dir_id=3 AND _id=record_id AND file_type!=2 AND is_deleted=0"

    const/4 v4, 0x0

    const-string v5, "out_timestamp DESC,_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_a

    :goto_58
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_72

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v1, v2, v3, v4}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/util/HashMap;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    :cond_72
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_a
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v3, 0x0

    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->l()Lcom/coremobility/app/customui/o;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const v2, 0x7f0c0005

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1b
    invoke-virtual {v1, p1}, Lcom/coremobility/app/customui/o;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/coremobility/app/customui/o;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    :goto_24
    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2d
    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24
.end method

.method public static a(Landroid/database/Cursor;Lcom/coremobility/app/vnotes/cs;)V
    .registers 4

    const/16 v1, 0x19

    const/16 v0, 0x17

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/coremobility/app/vnotes/cs;->a:I

    const/16 v0, 0x18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/coremobility/app/vnotes/cs;->b:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1c
    iput-object v0, p1, Lcom/coremobility/app/vnotes/cs;->c:Ljava/lang/String;

    const/16 v0, 0x1a

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/coremobility/app/vnotes/cs;->d:I

    const/16 v0, 0x1b

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/coremobility/app/vnotes/cs;->e:I

    const/16 v0, 0x1c

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/coremobility/app/vnotes/cs;->f:I

    const/16 v0, 0x1d

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/coremobility/app/vnotes/cs;->g:Ljava/lang/String;

    return-void

    :cond_3f
    const-string v0, ""

    goto :goto_1c
.end method

.method public static a(Landroid/database/Cursor;Lcom/coremobility/app/vnotes/ct;)V
    .registers 8

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/coremobility/app/vnotes/ct;->a:I

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/coremobility/app/vnotes/ct;->b:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    iput-object v0, p1, Lcom/coremobility/app/vnotes/ct;->c:Ljava/lang/String;

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_fa

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_29
    iput-object v0, p1, Lcom/coremobility/app/vnotes/ct;->d:Ljava/lang/String;

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_fe

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_35
    iput-object v0, p1, Lcom/coremobility/app/vnotes/ct;->e:Ljava/lang/String;

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_102

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_41
    iput-object v0, p1, Lcom/coremobility/app/vnotes/ct;->f:Ljava/lang/String;

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_106

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4d
    iput-object v0, p1, Lcom/coremobility/app/vnotes/ct;->g:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10a

    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5b
    iput-object v0, p1, Lcom/coremobility/app/vnotes/ct;->h:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10e

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6b
    iput-object v0, p1, Lcom/coremobility/app/vnotes/ct;->i:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_112

    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7b
    iput-object v0, p1, Lcom/coremobility/app/vnotes/ct;->j:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_116

    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_8b
    iput-object v0, p1, Lcom/coremobility/app/vnotes/ct;->k:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11a

    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_9b
    iput-object v0, p1, Lcom/coremobility/app/vnotes/ct;->l:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11e

    const/16 v0, 0xc

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_ab
    iput-object v0, p1, Lcom/coremobility/app/vnotes/ct;->m:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/coremobility/app/vnotes/ct;->n:I

    const/16 v0, 0xe

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/coremobility/app/vnotes/ct;->o:J

    const/16 v0, 0xf

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/coremobility/app/vnotes/ct;->p:J

    const/16 v0, 0x10

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/coremobility/app/vnotes/ct;->q:J

    const/16 v0, 0x11

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/coremobility/app/vnotes/ct;->r:J

    const/16 v0, 0x12

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/coremobility/app/vnotes/ct;->s:J

    const/16 v0, 0x13

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/coremobility/app/vnotes/ct;->t:J

    const/16 v0, 0x14

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/coremobility/app/vnotes/ct;->u:Ljava/lang/String;

    const/16 v0, 0x15

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/coremobility/app/vnotes/ct;->v:Ljava/lang/String;

    return-void

    :cond_f6
    const-string v0, ""

    goto/16 :goto_1d

    :cond_fa
    const-string v0, ""

    goto/16 :goto_29

    :cond_fe
    const-string v0, ""

    goto/16 :goto_35

    :cond_102
    const-string v0, ""

    goto/16 :goto_41

    :cond_106
    const-string v0, ""

    goto/16 :goto_4d

    :cond_10a
    const-string v0, ""

    goto/16 :goto_5b

    :cond_10e
    const-string v0, ""

    goto/16 :goto_6b

    :cond_112
    const-string v0, ""

    goto/16 :goto_7b

    :cond_116
    const-string v0, ""

    goto/16 :goto_8b

    :cond_11a
    const-string v0, ""

    goto/16 :goto_9b

    :cond_11e
    const-string v0, ""

    goto :goto_ab
.end method

.method public static a(Lcom/coremobility/app/vnotes/hq;Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->d()Lcom/coremobility/app/vnotes/hp;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0134

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hp;->b()Lcom/coremobility/app/vnotes/hs;

    move-result-object v0

    new-instance v2, Lcom/coremobility/app/vnotes/cr;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/cr;-><init>(Lcom/coremobility/app/vnotes/hq;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00f2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static a(Ljava/util/HashMap;JLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    invoke-static {p3, v1}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v1, v0, Lcom/coremobility/integration/f/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/bl;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1, p2}, Lcom/coremobility/app/vnotes/bl;->a(J)V

    :goto_14
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    :goto_17
    return-void

    :cond_18
    new-instance v0, Lcom/coremobility/app/vnotes/bl;

    invoke-direct {v0, v1, p1, p2}, Lcom/coremobility/app/vnotes/bl;-><init>(Ljava/lang/String;J)V

    goto :goto_14

    :cond_1e
    invoke-static {p4, v1}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, v0, Lcom/coremobility/integration/f/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/bl;

    if-eqz v0, :cond_35

    invoke-virtual {v0, p1, p2}, Lcom/coremobility/app/vnotes/bl;->a(J)V

    :goto_31
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_35
    new-instance v0, Lcom/coremobility/app/vnotes/bl;

    invoke-direct {v0, v1, p1, p2}, Lcom/coremobility/app/vnotes/bl;-><init>(Ljava/lang/String;J)V

    goto :goto_31
.end method

.method public static a(ZLandroid/app/Activity;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "vnotedir"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "usefilter"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(ILandroid/app/Activity;I)Z
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/coremobility/app/vnotes/cq;->c(ILandroid/app/Activity;I)Z

    move-result v0

    return v0
.end method

.method public static a(J)Z
    .registers 4

    const-wide/16 v0, 0x14

    cmp-long v0, p0, v0

    if-eqz v0, :cond_24

    const-wide/16 v0, 0x12

    cmp-long v0, p0, v0

    if-eqz v0, :cond_24

    const-wide/16 v0, 0x15

    cmp-long v0, p0, v0

    if-eqz v0, :cond_24

    const-wide/16 v0, 0x16

    cmp-long v0, p0, v0

    if-eqz v0, :cond_24

    const-wide/16 v0, 0xb

    cmp-long v0, p0, v0

    if-eqz v0, :cond_24

    const-wide/16 v0, 0xc

    cmp-long v0, p0, v0

    if-nez v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private static a(Landroid/content/Context;IILjava/lang/String;Landroid/content/ContentValues;)Z
    .registers 13

    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filename_only=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Vnote MIME Update Query for ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v6, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x5

    if-ne p1, v4, :cond_5b

    sget-object v4, Lcom/coremobility/app/vnotes/cf;->y:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, p4, v3, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_59

    :cond_51
    :goto_51
    const-string v2, "Vnote MIME Update Query finished"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v2, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_59
    move v0, v1

    goto :goto_51

    :cond_5b
    sget-object v4, Lcom/coremobility/app/vnotes/cf;->n:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, p4, v3, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_51

    move v0, v1

    goto :goto_51
.end method

.method public static a(Landroid/content/Context;IIZ)Z
    .registers 16

    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/coremobility/k/z;

    invoke-direct {v0, p1, p2, v9}, Lcom/coremobility/k/z;-><init>(IILjava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    if-ne p2, v10, :cond_61

    move v1, v2

    :goto_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    if-ne p2, v2, :cond_78

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "recipient_emails"

    aput-object v4, v0, v3

    invoke-static {p0, v10, p1, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_1a7

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1a4

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a4

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "activate@vvm.sprint.com"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a4

    move v0, v2

    :goto_3b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move v4, v0

    :goto_3f
    invoke-static {p0, p1, p2}, Lcom/coremobility/app/vnotes/cq;->c(Landroid/content/Context;II)Ljava/util/Vector;

    move-result-object v7

    if-eqz v7, :cond_78

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, v3

    :goto_4a
    if-nez v5, :cond_63

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1a1

    move v0, v2

    :goto_5f
    move v5, v0

    goto :goto_4a

    :cond_61
    move v1, v3

    goto :goto_10

    :cond_63
    if-ne p2, v2, :cond_78

    if-eqz v4, :cond_78

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v2, :cond_78

    if-eqz v5, :cond_78

    new-instance v0, Lcom/coremobility/k/be;

    invoke-direct {v0, v2}, Lcom/coremobility/k/be;-><init>(Z)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    :goto_77
    return v2

    :cond_78
    const/4 v0, 0x6

    const-string v4, "deleteVnoteWithId delete query started"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-ne p2, v11, :cond_f6

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->x:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v6

    iget-object v0, v6, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    if-eqz v0, :cond_b4

    iget-object v0, v6, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v7

    move v5, v3

    :goto_9f
    if-ge v5, v7, :cond_b4

    iget-object v0, v6, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_f2

    iget-object v0, v6, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_b4
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v5, v6, Lcom/coremobility/app/vnotes/da;->b:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v4

    :goto_bf
    const/4 v4, 0x6

    const-string v5, "deleteVnoteWithId delete query ended"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-gtz v0, :cond_116

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VNDelete, ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/k/be;

    invoke-direct {v0, v3}, Lcom/coremobility/k/be;-><init>(Z)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    move v2, v3

    goto :goto_77

    :cond_f2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_9f

    :cond_f6
    if-eqz p3, :cond_107

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->m:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_bf

    :cond_107
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->l:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_bf

    :cond_116
    if-ne p2, v10, :cond_18c

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    iget v0, v0, Lcom/coremobility/app/vnotes/cf;->h:I

    if-ltz v0, :cond_12a

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    iget v3, v0, Lcom/coremobility/app/vnotes/cf;->h:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/coremobility/app/vnotes/cf;->h:I

    :cond_12a
    if-nez p3, :cond_158

    const v0, 0x7f0d0009

    invoke-static {p0, v0, v2}, Lcom/coremobility/app/vnotes/cf;->b(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0c00bd

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    if-eqz v0, :cond_158

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->b()J

    move-result-wide v3

    const-wide/32 v5, -0x8001

    and-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/app/vnotes/ka;->b(J)V

    :cond_158
    :goto_158
    if-eq p2, v11, :cond_175

    if-eq p2, v2, :cond_175

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/coremobility/app/vnotes/cf;->a(IZ)V

    invoke-static {p1}, Lcom/coremobility/app/vnotes/cf;->f(I)Z

    move-result v0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->f()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v0}, Lcom/coremobility/app/vnotes/cf;->a(IZZ)V

    :cond_175
    if-eqz p2, :cond_182

    if-eq p2, v2, :cond_182

    if-eq p2, v11, :cond_182

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->w()V

    :cond_182
    new-instance v0, Lcom/coremobility/k/be;

    invoke-direct {v0, v2}, Lcom/coremobility/k/be;-><init>(Z)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto/16 :goto_77

    :cond_18c
    if-ne p2, v2, :cond_158

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    iget v0, v0, Lcom/coremobility/app/vnotes/cf;->i:I

    if-ltz v0, :cond_158

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    iget v3, v0, Lcom/coremobility/app/vnotes/cf;->i:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/coremobility/app/vnotes/cf;->i:I

    goto :goto_158

    :cond_1a1
    move v0, v5

    goto/16 :goto_5f

    :cond_1a4
    move v0, v3

    goto/16 :goto_3b

    :cond_1a7
    move v4, v3

    goto/16 :goto_3f
.end method

.method public static a(Landroid/content/Context;ILandroid/content/ContentValues;)Z
    .registers 9

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vnote Update Query for ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->l:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, p2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_38

    const/4 v0, 0x1

    :goto_30
    const-string v2, "Vnote Update Query finished"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_38
    move v0, v1

    goto :goto_30
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;III)Z
    .registers 15

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x6

    const/4 v6, 0x0

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "record_id"

    aput-object v0, v2, v6

    const-string v0, "filename_only"

    aput-object v0, v2, v7

    const/4 v0, 0x2

    const-string v1, "duration"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "file_size"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "transcribe_rate"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "mime_guid"

    aput-object v1, v2, v0

    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filename_only=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Vnote Mime Query for ID: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v8, v1, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->n:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v0, "Vnote Mime Query for ID ended"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v8, v0, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_127

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_a5

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "file_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "duration"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "file_size"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p0, v6, p1, p2, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    :goto_a1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_a4
    return v0

    :cond_a5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "record_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "file_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "filename_only"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "file_size"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "duration"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "transcribe_rate"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "mime_guid"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "InsertVnotesMime insert started"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v8, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->n:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "InsertVnotesMime insert ended"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v8, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->k:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_10c

    const-string v0, "VNOTES PROVIDER - Insert Vnotes Mime Failed! "

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v8, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    goto :goto_a1

    :cond_10c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VNOTES PROVIDER - Insert Vnotes Mime Successful - ID = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v8, v0, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v7

    goto/16 :goto_a1

    :cond_127
    move v0, v6

    goto/16 :goto_a4
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Landroid/content/ContentValues;)Z
    .registers 5

    const/4 v0, 0x3

    invoke-static {p0, v0, p1, p2, p3}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/coremobility/app/vnotes/ka;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/ka;->k()[I

    move-result-object v5

    array-length v6, v5

    move v4, v3

    move v0, v3

    move v2, v3

    :goto_a
    if-ge v4, v6, :cond_20

    aget v7, v5, v4

    int-to-long v7, v7

    invoke-static {v7, v8}, Lcom/coremobility/app/vnotes/cq;->a(J)Z

    move-result v7

    if-eqz v7, :cond_19

    move v2, v1

    :cond_16
    :goto_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_19
    aget v7, v5, v4

    const/4 v8, 0x2

    if-ne v7, v8, :cond_16

    move v0, v1

    goto :goto_16

    :cond_20
    if-eqz v2, :cond_2f

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_2e
    :goto_2e
    return v1

    :cond_2f
    move v1, v3

    goto :goto_2e
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    invoke-static {p0}, Lcom/coremobility/j/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v0, "email"

    :cond_b
    :goto_b
    if-eqz v0, :cond_34

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "phone"

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    :cond_34
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public static a(Ljava/lang/String;ZLandroid/app/Activity;)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_ac

    const/4 v2, 0x1

    :try_start_5
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.extra.EMAIL"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_68

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/cf;->q()Lcom/coremobility/app/vnotes/cp;

    move-result-object v2

    iget-object v2, v2, Lcom/coremobility/app/vnotes/cp;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7c

    const v4, 0x7f0c0080

    invoke-virtual {p2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->B()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_4b
    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    const v4, 0x7f0c0081

    invoke-virtual {p2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_68
    const-string v2, "message/rfc822"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x7f0c002e

    invoke-virtual {p2, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_7b
    return v0

    :cond_7c
    const v2, 0x7f0c007f

    invoke-virtual {p2, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->B()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_97
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_97} :catch_99

    move-result-object v2

    goto :goto_4b

    :catch_99
    move-exception v0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    const v2, 0x7f0c0072

    invoke-virtual {p2, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_ac
    move v0, v1

    goto :goto_7b
.end method

.method public static b(I)I
    .registers 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    :goto_3
    return v0

    :cond_4
    sget v0, Lcom/coremobility/app/vnotes/cf;->b:I

    rem-int v0, p0, v0

    packed-switch v0, :pswitch_data_16

    const v0, -0xffff01

    goto :goto_3

    :pswitch_f
    const v0, -0xff0100

    goto :goto_3

    :pswitch_13
    const/high16 v0, -0x1

    goto :goto_3

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method

.method public static b(II)I
    .registers 14

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_16

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/da;->b(I)I

    move-result v1

    if-lez v1, :cond_15

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/da;->a(I)I

    move-result v2

    :cond_15
    :goto_15
    return v2

    :cond_16
    invoke-static {p1}, Lcom/coremobility/app/vnotes/cf;->b(I)Z

    move-result v3

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    if-eqz v3, :cond_ac

    if-eqz v0, :cond_ac

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->c()[J

    move-result-object v0

    aget-wide v3, v0, v1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    :cond_43
    :goto_43
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->c()[J

    move-result-object v8

    aget-wide v8, v8, v1

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->r()I

    move-result v0

    cmp-long v10, v8, v3

    if-gtz v10, :cond_75

    cmp-long v10, v8, v3

    if-nez v10, :cond_43

    if-le v7, p0, :cond_43

    :cond_75
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v10, v8, v10

    if-gtz v10, :cond_43

    if-eq v7, p0, :cond_43

    if-ne v0, p1, :cond_43

    new-instance v0, Lcom/coremobility/app/vnotes/bj;

    invoke-direct {v0, v7, v8, v9}, Lcom/coremobility/app/vnotes/bj;-><init>(IJ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_8b
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->g()Lcom/coremobility/app/vnotes/bk;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/bj;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bj;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_15

    :cond_ac
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v0

    sparse-switch p1, :sswitch_data_100

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->c(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    move-object v3, v0

    :goto_b8
    if-nez v3, :cond_d0

    const/4 v0, 0x6

    const-string v3, "goToNextMsg - no cursor"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_15

    :sswitch_c4
    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->e(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    move-object v3, v0

    goto :goto_b8

    :sswitch_ca
    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->d(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    move-object v3, v0

    goto :goto_b8

    :cond_d0
    const-string v0, "_id"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move v0, v1

    :goto_d7
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_fd

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, p0, :cond_f8

    :goto_e6
    if-eq v0, v2, :cond_fb

    invoke-interface {v3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_f2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move v2, v0

    goto/16 :goto_15

    :cond_f8
    add-int/lit8 v0, v0, 0x1

    goto :goto_d7

    :cond_fb
    move v0, v2

    goto :goto_f2

    :cond_fd
    move v0, v2

    goto :goto_e6

    nop

    :sswitch_data_100
    .sparse-switch
        0x1 -> :sswitch_ca
        0x6 -> :sswitch_c4
    .end sparse-switch
.end method

.method public static b(IILandroid/app/Activity;)I
    .registers 15

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_60

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->c()Landroid/database/Cursor;

    move-result-object v4

    if-nez p0, :cond_3f

    move v0, v1

    :goto_16
    if-eqz v4, :cond_3d

    invoke-interface {v4}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string v2, "_id"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v2, "file_type"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v2, "status"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    :cond_30
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, p0, :cond_41

    move v0, v1

    :cond_37
    invoke-interface {v4}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2

    if-nez v2, :cond_30

    :cond_3d
    move v0, v3

    :goto_3e
    return v0

    :cond_3f
    const/4 v0, 0x0

    goto :goto_16

    :cond_41
    if-eqz v0, :cond_37

    if-eq v6, v3, :cond_37

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v9, v10}, Lcom/coremobility/app/vnotes/cq;->a(J)Z

    move-result v9

    if-eqz v9, :cond_37

    int-to-long v8, v8

    const-wide/16 v10, 0x2

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_37

    move v0, v2

    goto :goto_3e

    :cond_60
    invoke-static {p0, p1, p2}, Lcom/coremobility/app/vnotes/cq;->a(IILandroid/app/Activity;)I

    move-result v0

    goto :goto_3e
.end method

.method public static declared-synchronized b(Landroid/content/Context;I)I
    .registers 14

    const/4 v11, 0x3

    const/4 v6, 0x2

    const/4 v10, 0x6

    const/4 v9, 0x1

    const/4 v7, 0x0

    const-class v8, Lcom/coremobility/app/vnotes/cq;

    monitor-enter v8

    if-ne p1, v11, :cond_1a

    :try_start_a
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    iget v0, v0, Lcom/coremobility/app/vnotes/cf;->h:I

    if-ltz v0, :cond_41

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    iget v0, v0, Lcom/coremobility/app/vnotes/cf;->h:I
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_c9

    :goto_18
    monitor-exit v8

    return v0

    :cond_1a
    if-ne p1, v9, :cond_2b

    :try_start_1c
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    iget v0, v0, Lcom/coremobility/app/vnotes/cf;->i:I

    if-ltz v0, :cond_41

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    iget v0, v0, Lcom/coremobility/app/vnotes/cf;->i:I

    goto :goto_18

    :cond_2b
    const/4 v0, 0x5

    if-ne p1, v0, :cond_41

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/da;->a()I

    move-result v0

    if-ltz v0, :cond_41

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/da;->a()I

    move-result v0

    goto :goto_18

    :cond_41
    new-instance v0, Lcom/coremobility/k/ab;

    invoke-direct {v0, p1}, Lcom/coremobility/k/ab;-><init>(I)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "dir_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "is_deleted"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_cc

    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->x:Landroid/net/Uri;

    :goto_60
    if-ne p1, v10, :cond_cf

    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dir_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "is_deleted"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "!="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_fa

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v1, v7

    :goto_a2
    if-ne p1, v11, :cond_fe

    const/4 v3, 0x6

    const-string v4, "INBOX getNumNotes %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v3

    iput v0, v3, Lcom/coremobility/app/vnotes/cf;->h:I

    :cond_ba
    :goto_ba
    if-eqz v2, :cond_bf

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_bf
    new-instance v2, Lcom/coremobility/k/bg;

    invoke-direct {v2, v0, v1}, Lcom/coremobility/k/bg;-><init>(II)V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_c7
    .catchall {:try_start_1c .. :try_end_c7} :catchall_c9

    goto/16 :goto_18

    :catchall_c9
    move-exception v0

    monitor-exit v8

    throw v0

    :cond_cc
    :try_start_cc
    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->l:Landroid/net/Uri;

    goto :goto_60

    :cond_cf
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dir_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "is_deleted"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "=0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_91

    :cond_fa
    const/16 v1, 0x1d

    move v0, v7

    goto :goto_a2

    :cond_fe
    if-ne p1, v9, :cond_117

    const/4 v3, 0x6

    const-string v4, "OUTBOX getNumNotes %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v3

    iput v0, v3, Lcom/coremobility/app/vnotes/cf;->i:I

    goto :goto_ba

    :cond_117
    const/4 v3, 0x5

    if-ne p1, v3, :cond_122

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/coremobility/app/vnotes/da;->a(Landroid/database/Cursor;)V
    :try_end_121
    .catchall {:try_start_cc .. :try_end_121} :catchall_c9

    goto :goto_ba

    :cond_122
    if-eq p1, v10, :cond_ba

    move v1, v6

    goto :goto_ba
.end method

.method public static declared-synchronized b(Landroid/content/Context;II)I
    .registers 12

    const/4 v5, 0x0

    const/4 v6, -0x1

    const-class v7, Lcom/coremobility/app/vnotes/cq;

    monitor-enter v7

    const/4 v0, 0x1

    :try_start_6
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dir_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "is_deleted"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "!="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_96

    :goto_43
    :pswitch_43
    const/4 v1, 0x6

    const-string v4, "getListPositionById query start"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v4, v8}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/coremobility/integration/app/k;->l:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v0, 0x6

    const-string v2, "getListPositionById query end"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_5c
    .catchall {:try_start_6 .. :try_end_5c} :catchall_8a

    if-nez v1, :cond_70

    move v0, v6

    :goto_5f
    monitor-exit v7

    return v0

    :pswitch_61
    :try_start_61
    const-string v5, "out_timestamp DESC,_id DESC"

    goto :goto_43

    :pswitch_64
    const-string v5, "out_timestamp DESC,_id DESC"

    goto :goto_43

    :pswitch_67
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coremobility/app/vnotes/da;->b(I)I

    move-result v0

    goto :goto_5f

    :cond_70
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_5f

    :cond_7b
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne p1, v0, :cond_8d

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    :goto_86
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_89
    .catchall {:try_start_61 .. :try_end_89} :catchall_8a

    goto :goto_5f

    :catchall_8a
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_8d
    :try_start_8d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_8a

    move-result v0

    if-nez v0, :cond_7b

    move v0, v6

    goto :goto_86

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_64
        :pswitch_43
        :pswitch_61
        :pswitch_43
        :pswitch_67
        :pswitch_61
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;II[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    const/4 v4, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_45

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->y:Landroid/net/Uri;

    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vnote MIME Query for ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "record_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "Vnote MIME Query ended"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_45
    sget-object v1, Lcom/coremobility/app/vnotes/cf;->n:Landroid/net/Uri;

    goto :goto_c
.end method

.method public static b(Landroid/content/Context;I[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11

    const/4 v4, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vnote MIME Query for ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->n:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "record_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "Vnote MIME Query ended"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Lcom/coremobility/integration/f/b;)Landroid/net/Uri;
    .registers 2

    if-eqz p0, :cond_5

    iget-object v0, p0, Lcom/coremobility/integration/f/b;->c:Landroid/net/Uri;

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 11

    const/4 v2, 0x6

    const/4 v1, 0x0

    const/4 v6, 0x0

    const-string v0, "getAddressFromContactUri MDN query executed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_ba

    move-result-object v7

    const/4 v0, 0x6

    :try_start_18
    const-string v1, "getAddressFromContactUri MDN query finished"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_f2

    const-string v0, "has_phone_number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "lookup"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-lez v0, :cond_7b

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lookup=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_61} :catch_ce

    move-result-object v1

    if-eqz v1, :cond_f0

    :try_start_64
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_ee

    const-string v0, "data1"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_73} :catch_d3

    move-result-object v0

    :goto_74
    :try_start_74
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_77
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7a} :catch_d7

    :cond_7a
    :goto_7a
    return-object v0

    :cond_7b
    :try_start_7b
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lookup=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_a0} :catch_ce

    move-result-object v1

    if-eqz v1, :cond_e9

    :try_start_a3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e7

    const-string v0, "data1"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_b2} :catch_da

    move-result-object v0

    :goto_b3
    :try_start_b3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b6} :catch_e1

    move-object v8, v1

    move-object v1, v6

    move-object v6, v8

    goto :goto_77

    :catch_ba
    move-exception v0

    move-object v0, v6

    move-object v1, v6

    move-object v2, v6

    :goto_be
    if-eqz v1, :cond_c3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c3
    if-eqz v2, :cond_c8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c8
    if-eqz v6, :cond_7a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_7a

    :catch_ce
    move-exception v0

    move-object v0, v6

    move-object v1, v6

    move-object v2, v7

    goto :goto_be

    :catch_d3
    move-exception v0

    move-object v0, v6

    move-object v2, v7

    goto :goto_be

    :catch_d7
    move-exception v2

    move-object v2, v7

    goto :goto_be

    :catch_da
    move-exception v0

    move-object v0, v6

    move-object v2, v7

    move-object v8, v6

    move-object v6, v1

    move-object v1, v8

    goto :goto_be

    :catch_e1
    move-exception v2

    move-object v2, v7

    move-object v8, v6

    move-object v6, v1

    move-object v1, v8

    goto :goto_be

    :cond_e7
    move-object v0, v6

    goto :goto_b3

    :cond_e9
    move-object v0, v6

    move-object v8, v1

    move-object v1, v6

    move-object v6, v8

    goto :goto_77

    :cond_ee
    move-object v0, v6

    goto :goto_74

    :cond_f0
    move-object v0, v6

    goto :goto_77

    :cond_f2
    move-object v0, v6

    move-object v1, v6

    goto :goto_77
.end method

.method public static b(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 5

    const/4 v3, -0x1

    if-nez p0, :cond_6

    const-string v0, ""

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    const-string v0, "sender_mdn"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v0, "sender_email"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_20

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5

    :cond_20
    if-eq v1, v3, :cond_2e

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_2e
    const-string v0, ""

    goto :goto_5
.end method

.method public static b(Lcom/coremobility/k/de;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Lcom/coremobility/k/de;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/coremobility/k/de;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    invoke-virtual {p0}, Lcom/coremobility/k/de;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_1a
    invoke-virtual {p0}, Lcom/coremobility/k/de;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/coremobility/k/de;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2f

    invoke-virtual {p0}, Lcom/coremobility/k/de;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_2f
    const-string v0, ""

    goto :goto_4
.end method

.method public static b(Lcom/coremobility/l/an;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_f

    iget-object v0, p0, Lcom/coremobility/l/an;->b:Ljava/util/Vector;

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/coremobility/l/ah;->a(Lcom/coremobility/l/an;)Lcom/coremobility/l/aj;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/coremobility/l/aj;->a:Ljava/lang/String;

    :goto_e
    return-object v0

    :cond_f
    const-string v0, ""

    goto :goto_e
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/coremobility/integration/f/b;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object p0, v0, Lcom/coremobility/integration/f/b;->a:Ljava/lang/String;

    :cond_11
    :goto_11
    return-object p0

    :cond_12
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_11
.end method

.method private static b(ILandroid/app/Activity;I)Ljava/util/ArrayList;
    .registers 11

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->l()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->k()[I

    move-result-object v4

    if-eqz v3, :cond_87

    array-length v5, v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_23
    if-ge v1, v5, :cond_84

    new-instance v2, Lcom/coremobility/app/vnotes/kh;

    invoke-direct {v2}, Lcom/coremobility/app/vnotes/kh;-><init>()V

    aget-object v6, v3, v1

    iput-object v6, v2, Lcom/coremobility/app/vnotes/kh;->a:Ljava/lang/String;

    aget v6, v4, v1

    iput v6, v2, Lcom/coremobility/app/vnotes/kh;->b:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "file_type"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "filename_only"

    aput-object v3, v0, v2

    invoke-static {p1, p2, p0, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_85

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "file_type"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v3, "filename_only"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_81

    :cond_61
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/coremobility/app/vnotes/kh;

    invoke-direct {v6}, Lcom/coremobility/app/vnotes/kh;-><init>()V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7b

    iput-object v5, v6, Lcom/coremobility/app/vnotes/kh;->a:Ljava/lang/String;

    iput v4, v6, Lcom/coremobility/app/vnotes/kh;->b:I

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_61

    :cond_81
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_84
    :goto_84
    return-object v0

    :cond_85
    move-object v0, v1

    goto :goto_84

    :cond_87
    move-object v0, v1

    goto :goto_84
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 4

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method private static b(Landroid/app/Activity;I)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "status_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7

    const v2, 0x7f07000f

    const/4 v4, 0x6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "launch face book  social activity "

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "launch twitter social activity "

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_27
.end method

.method private static b(Landroid/content/ContentResolver;I)V
    .registers 8

    sget-object v1, Lcom/coremobility/integration/app/k;->r:Landroid/net/Uri;

    sget-object v2, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "dir_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "is_deleted"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "record_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "out_timestamp DESC,_id DESC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_7c

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_79

    :cond_68
    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->c(Landroid/database/Cursor;)Lcom/coremobility/k/de;

    move-result-object v1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/k/de;)V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_68

    :cond_79
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7c
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->u:Landroid/net/Uri;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;IIZ)V
    .registers 13

    const/4 v8, 0x5

    const-class v4, Lcom/coremobility/app/vnotes/cq;

    monitor-enter v4

    if-eqz p3, :cond_66

    :try_start_6
    new-instance v0, Lcom/coremobility/k/ae;

    invoke-direct {v0, p1}, Lcom/coremobility/k/ae;-><init>(I)V

    :goto_b
    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    if-ne p2, v8, :cond_6f

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coremobility/app/vnotes/da;->c(I)Lcom/coremobility/app/vnotes/ka;

    move-result-object v0

    move-object v3, v0

    :goto_19
    if-eqz v3, :cond_7f

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/ka;->b()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    :goto_21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    if-eqz p3, :cond_d4

    const-wide/16 v6, 0x10

    or-long/2addr v0, v6

    :goto_2f
    const-string v6, "status"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-ne p2, v8, :cond_d9

    sget-object v6, Lcom/coremobility/app/vnotes/cf;->x:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_49
    const/4 v2, 0x6

    const-string v5, "lockVnoteWithId update ended"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_59

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Lcom/coremobility/app/vnotes/ka;->b(J)V

    :cond_59
    if-eqz p3, :cond_ea

    new-instance v0, Lcom/coremobility/k/bj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coremobility/k/bj;-><init>(I)V

    :goto_61
    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_64
    .catchall {:try_start_6 .. :try_end_64} :catchall_6c

    :goto_64
    monitor-exit v4

    return-void

    :cond_66
    :try_start_66
    new-instance v0, Lcom/coremobility/k/ay;

    invoke-direct {v0, p1}, Lcom/coremobility/k/ay;-><init>(I)V
    :try_end_6b
    .catchall {:try_start_66 .. :try_end_6b} :catchall_6c

    goto :goto_b

    :catchall_6c
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_6f
    :try_start_6f
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    move-object v3, v0

    goto :goto_19

    :cond_7f
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "status"

    aput-object v2, v0, v1

    if-ne p2, v8, :cond_9f

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    invoke-static {p0, p1, v0}, Lcom/coremobility/app/vnotes/da;->a(Landroid/content/Context;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    :goto_91
    if-nez v2, :cond_ad

    if-eqz p3, :cond_a6

    new-instance v0, Lcom/coremobility/k/bj;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/coremobility/k/bj;-><init>(I)V

    :goto_9b
    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto :goto_64

    :cond_9f
    const/4 v1, 0x3

    invoke-static {p0, v1, p1, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    goto :goto_91

    :cond_a6
    new-instance v0, Lcom/coremobility/k/cd;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/coremobility/k/cd;-><init>(I)V

    goto :goto_9b

    :cond_ad
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_c9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    if-eqz p3, :cond_c2

    new-instance v0, Lcom/coremobility/k/bj;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/coremobility/k/bj;-><init>(I)V

    :goto_be
    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto :goto_64

    :cond_c2
    new-instance v0, Lcom/coremobility/k/cd;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/coremobility/k/cd;-><init>(I)V

    goto :goto_be

    :cond_c9
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_21

    :cond_d4
    const-wide/16 v6, -0x11

    and-long/2addr v0, v6

    goto/16 :goto_2f

    :cond_d9
    sget-object v6, Lcom/coremobility/app/vnotes/cf;->l:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_49

    :cond_ea
    new-instance v0, Lcom/coremobility/k/cd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coremobility/k/cd;-><init>(I)V
    :try_end_f0
    .catchall {:try_start_6f .. :try_end_f0} :catchall_6c

    goto/16 :goto_61
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->l()Lcom/coremobility/app/customui/o;

    move-result-object v1

    if-eqz v1, :cond_27

    const v2, 0x7f0c0005

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coremobility/app/customui/o;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/coremobility/app/customui/o;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    :goto_1e
    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_27
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e
.end method

.method public static b(Ljava/lang/String;Landroid/app/Activity;)V
    .registers 6

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p0}, Lcom/coremobility/j/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "+1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_38
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchVoiceCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid MDN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static b(ZLandroid/app/Activity;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "vnotedir"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "usefilter"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static b()Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static b(J)Z
    .registers 4

    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static c()I
    .registers 1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->c()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static c(I)I
    .registers 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_7

    const v0, 0x7f02000c

    :goto_6
    return v0

    :cond_7
    sget v0, Lcom/coremobility/app/vnotes/cf;->b:I

    rem-int v0, p0, v0

    packed-switch v0, :pswitch_data_1a

    const v0, 0x7f02000d

    goto :goto_6

    :pswitch_12
    const v0, 0x7f02000e

    goto :goto_6

    :pswitch_16
    const v0, 0x7f02000f

    goto :goto_6

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_12
        :pswitch_16
    .end packed-switch
.end method

.method public static c(II)I
    .registers 5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_38

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->c()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_38

    :cond_19
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, p0, :cond_32

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_2f
    return v0

    :cond_30
    const/4 v0, -0x1

    goto :goto_2f

    :cond_32
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_38
    invoke-static {p0, p1}, Lcom/coremobility/app/vnotes/cq;->d(II)I

    move-result v0

    goto :goto_2f
.end method

.method public static declared-synchronized c(Landroid/content/Context;I)I
    .registers 4

    const-class v1, Lcom/coremobility/app/vnotes/cq;

    monitor-enter v1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1c

    :try_start_6
    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->c()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_21

    move-result v0

    :goto_1a
    monitor-exit v1

    return v0

    :cond_1c
    :try_start_1c
    invoke-static {p0, p1}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_21

    move-result v0

    goto :goto_1a

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 9

    const/4 v4, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v6

    const-string v3, "dir_id=3 AND _id=record_id AND file_type!=2 AND is_deleted=0"

    if-eqz v0, :cond_28

    const-string v1, "getInboxList query executed"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/coremobility/integration/app/k;->r:Landroid/net/Uri;

    const-string v5, "out_timestamp DESC,_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const-string v0, "getInboxList query finished"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    return-object v4
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;)Lcom/coremobility/app/vnotes/kf;
    .registers 14

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v4

    const-string v1, "display_name"

    aput-object v1, v2, v5

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_b4

    :try_start_21
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_133

    new-instance v6, Lcom/coremobility/app/vnotes/kf;

    invoke-direct {v6}, Lcom/coremobility/app/vnotes/kf;-><init>()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2c} :catch_131

    const/4 v1, 0x0

    :try_start_2d
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/coremobility/app/vnotes/kf;->a:Ljava/lang/String;

    move-wide v7, v1

    :goto_39
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const-wide/16 v1, -0x1

    cmp-long v1, v7, v1

    if-eqz v1, :cond_12f

    if-eqz v6, :cond_12f

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "data1"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "data2"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "data3"

    aput-object v3, v2, v1

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_bb

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_b8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/coremobility/app/vnotes/kf;->b:Ljava/util/ArrayList;

    :goto_80
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b8

    new-instance v3, Lcom/coremobility/app/vnotes/kg;

    invoke-direct {v3}, Lcom/coremobility/app/vnotes/kg;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v4, v5}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v1, v3, Lcom/coremobility/app/vnotes/kg;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_aa
    iput-object v1, v3, Lcom/coremobility/app/vnotes/kg;->b:Ljava/lang/String;

    iget-object v1, v6, Lcom/coremobility/app/vnotes/kf;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_80

    :catch_b2
    move-exception v0

    move-object v3, v6

    :cond_b4
    :goto_b4
    return-object v3

    :cond_b5
    const-string v1, ""

    goto :goto_aa

    :cond_b8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_bb
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "data1"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "data2"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "data3"

    aput-object v3, v2, v1

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_12f

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_12c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/coremobility/app/vnotes/kf;->c:Ljava/util/ArrayList;

    :goto_f7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_12c

    new-instance v2, Lcom/coremobility/app/vnotes/kg;

    invoke-direct {v2}, Lcom/coremobility/app/vnotes/kg;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v3, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v0, v2, Lcom/coremobility/app/vnotes/kg;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_129

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_121
    iput-object v0, v2, Lcom/coremobility/app/vnotes/kg;->b:Ljava/lang/String;

    iget-object v0, v6, Lcom/coremobility/app/vnotes/kf;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f7

    :cond_129
    const-string v0, ""

    goto :goto_121

    :cond_12c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_12f} :catch_b2

    :cond_12f
    move-object v3, v6

    goto :goto_b4

    :catch_131
    move-exception v0

    goto :goto_b4

    :cond_133
    move-wide v10, v6

    move-wide v7, v10

    move-object v6, v3

    goto/16 :goto_39
.end method

.method public static c(Landroid/database/Cursor;)Lcom/coremobility/k/de;
    .registers 7

    const/4 v5, 0x6

    const/4 v4, 0x0

    new-array v0, v5, [J

    new-instance v1, Lcom/coremobility/k/de;

    invoke-direct {v1}, Lcom/coremobility/k/de;-><init>()V

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coremobility/k/de;->a(I)V

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coremobility/k/de;->f(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v0, v4

    invoke-virtual {v1, v0}, Lcom/coremobility/k/de;->a([J)V

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coremobility/k/de;->c(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coremobility/k/de;->d(Ljava/lang/String;)V

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coremobility/k/de;->b(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/coremobility/k/de;->a(J)V

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coremobility/k/de;->h(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coremobility/k/de;->g(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coremobility/k/de;->n(Ljava/lang/String;)V

    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/coremobility/k/de;->b(J)V

    const/16 v0, 0xd

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/coremobility/k/de;->c(J)V

    const/16 v0, 0xe

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coremobility/k/de;->a(Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/coremobility/k/de;->c(I)V

    const/16 v0, 0x11

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/coremobility/k/de;->d(I)V

    const/16 v0, 0x12

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coremobility/k/de;->p(Ljava/lang/String;)V

    const/16 v0, 0x13

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/coremobility/k/de;->b(I)V

    return-object v1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/integration/f/b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static c(Landroid/content/Context;II)Ljava/util/Vector;
    .registers 11

    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFileTypesFromVnoteWithId Query started for id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x5

    if-ne p2, v0, :cond_6a

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->y:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_3a
    const-string v1, "getFileTypesFromVnoteWithId Query finished"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_69

    const-string v1, "file_type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_66

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :cond_54
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_54

    :cond_66
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_69
    return-object v2

    :cond_6a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->n:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_3a
.end method

.method public static c(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static c(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    const-string v0, "sms"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "sms_body"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    const v0, 0x7f0c02a8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_18
.end method

.method public static c(Ljava/lang/String;Landroid/app/Activity;)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_22

    const-string v0, ","

    const-string v1, ";"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_22
    const-string v0, "sms"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method private static c(ILandroid/app/Activity;I)Z
    .registers 22

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string v8, ""

    const-string v7, ""

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x5

    move/from16 v0, p2

    if-ne v0, v3, :cond_bd

    const/4 v3, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "file_type"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "filename_only"

    aput-object v13, v11, v12

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p0

    invoke-static {v0, v1, v2, v11}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_68

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v12, "file_type"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "filename_only"

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_65

    :cond_3f
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Lcom/coremobility/app/vnotes/kh;

    invoke-direct/range {v16 .. v16}, Lcom/coremobility/app/vnotes/kh;-><init>()V

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5f

    move-object/from16 v0, v16

    iput-object v15, v0, Lcom/coremobility/app/vnotes/kh;->a:Ljava/lang/String;

    move-object/from16 v0, v16

    iput v14, v0, Lcom/coremobility/app/vnotes/kh;->b:I

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5f
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_3f

    :cond_65
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_68
    const/4 v11, 0x0

    :goto_69
    if-eqz v3, :cond_71

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_8d

    :cond_71
    const/4 v12, 0x6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No Mime Entries found for this vnoteID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_8d
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_91
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremobility/app/vnotes/kh;

    if-eqz v3, :cond_1a7

    iget-object v13, v3, Lcom/coremobility/app/vnotes/kh;->a:Ljava/lang/String;

    invoke-static {v13}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1a7

    iget v3, v3, Lcom/coremobility/app/vnotes/kh;->b:I

    int-to-long v14, v3

    invoke-static {v14, v15}, Lcom/coremobility/app/vnotes/cq;->a(J)Z

    move-result v14

    if-eqz v14, :cond_d4

    invoke-static {v13, v11}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v7

    packed-switch v3, :pswitch_data_1ac

    :pswitch_b7
    const/4 v6, 0x0

    :goto_b8
    const/4 v3, 0x1

    move-object v9, v7

    move-object v7, v6

    move v6, v3

    goto :goto_91

    :cond_bd
    invoke-static/range {p0 .. p2}, Lcom/coremobility/app/vnotes/cq;->b(ILandroid/app/Activity;I)Ljava/util/ArrayList;

    move-result-object v11

    const/4 v3, 0x1

    move/from16 v18, v3

    move-object v3, v11

    move/from16 v11, v18

    goto :goto_69

    :pswitch_c8
    const-string v6, "audio/amr"

    goto :goto_b8

    :pswitch_cb
    const-string v6, "audio/amr-wb"

    goto :goto_b8

    :pswitch_ce
    const-string v6, "audio/vnd.qcelp"

    goto :goto_b8

    :pswitch_d1
    const-string v6, "text/plain"

    goto :goto_b8

    :cond_d4
    const/4 v14, 0x1

    if-ne v3, v14, :cond_e6

    if-eqz v11, :cond_e1

    invoke-static {v13}, Lcom/coremobility/app/vnotes/cq;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_dd
    const/4 v3, 0x1

    move-object v8, v5

    move v5, v3

    goto :goto_91

    :cond_e1
    invoke-static {v13}, Lcom/coremobility/app/vnotes/cq;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_dd

    :cond_e6
    const/4 v14, 0x2

    if-ne v3, v14, :cond_1a7

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremobility/app/vnotes/ka;

    if-eqz v3, :cond_114

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/ka;->q()Lcom/coremobility/l/an;

    move-result-object v3

    if-nez v3, :cond_103

    :cond_ff
    invoke-static {v13}, Lcom/coremobility/l/ah;->a(Ljava/lang/String;)Lcom/coremobility/l/an;

    move-result-object v3

    :cond_103
    :goto_103
    invoke-static {v3}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/l/an;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a7

    const/4 v4, 0x1

    move v3, v4

    move-object v4, v8

    :goto_110
    move-object v8, v4

    move v4, v3

    goto/16 :goto_91

    :cond_114
    const/4 v3, 0x5

    move/from16 v0, p2

    if-ne v0, v3, :cond_ff

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "smvvm"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Lcom/coremobility/l/ah;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/l/an;

    move-result-object v3

    goto :goto_103

    :cond_13f
    :try_start_13f
    new-instance v11, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v6, :cond_14c

    if-nez v9, :cond_184

    const/4 v3, 0x1

    :cond_14c
    :goto_14c
    if-nez v3, :cond_1a5

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16e

    const-string v3, "android.intent.extra.SUBJECT"

    const v6, 0x7f0c0010

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_16e
    if-nez v5, :cond_172

    if-eqz v4, :cond_177

    :cond_172
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v11, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_177
    const-string v3, "Email:"

    invoke-static {v11, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x1

    :goto_183
    return v3

    :cond_184
    invoke-virtual {v11, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v11, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_18c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_13f .. :try_end_18c} :catch_18d

    goto :goto_14c

    :catch_18d
    move-exception v3

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v3

    const v4, 0x7f0c0072

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/4 v3, 0x0

    goto :goto_183

    :cond_1a5
    move v3, v10

    goto :goto_183

    :cond_1a7
    move v3, v4

    move-object v4, v8

    goto/16 :goto_110

    nop

    :pswitch_data_1ac
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_d1
        :pswitch_b7
        :pswitch_b7
        :pswitch_b7
        :pswitch_b7
        :pswitch_b7
        :pswitch_b7
        :pswitch_b7
        :pswitch_b7
        :pswitch_b7
        :pswitch_b7
        :pswitch_ce
        :pswitch_ce
        :pswitch_ce
        :pswitch_ce
        :pswitch_b7
        :pswitch_c8
        :pswitch_cb
        :pswitch_b7
        :pswitch_ce
        :pswitch_ce
    .end packed-switch
.end method

.method public static c(J)Z
    .registers 6

    const-wide/16 v2, 0x2

    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static d(I)I
    .registers 3

    const/4 v0, 0x0

    const v1, 0x1869f

    if-ne p0, v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v1, -0x1

    if-eq p0, v1, :cond_6

    add-int/lit8 v0, p0, 0x1

    goto :goto_6
.end method

.method public static d(II)I
    .registers 13

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1c

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/da;->a()I

    move-result v1

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/da;->b(I)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    if-ge v4, v1, :cond_1b

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/da;->a(I)I

    move-result v2

    :cond_1b
    :goto_1b
    return v2

    :cond_1c
    invoke-static {p1}, Lcom/coremobility/app/vnotes/cf;->b(I)Z

    move-result v3

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    if-eqz v3, :cond_af

    if-eqz v0, :cond_af

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->c()[J

    move-result-object v0

    aget-wide v3, v0, v1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    :cond_49
    :goto_49
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->c()[J

    move-result-object v8

    aget-wide v8, v8, v1

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->r()I

    move-result v0

    cmp-long v10, v8, v3

    if-ltz v10, :cond_7b

    cmp-long v10, v8, v3

    if-nez v10, :cond_49

    if-ge v7, p0, :cond_49

    :cond_7b
    if-eq v7, p0, :cond_49

    if-ne v0, p1, :cond_49

    new-instance v0, Lcom/coremobility/app/vnotes/bj;

    invoke-direct {v0, v7, v8, v9}, Lcom/coremobility/app/vnotes/bj;-><init>(IJ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :cond_88
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->g()Lcom/coremobility/app/vnotes/bk;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_ac

    :goto_96
    if-ltz v1, :cond_1b

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/bj;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bj;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_1b

    :cond_ac
    add-int/lit8 v1, v0, -0x1

    goto :goto_96

    :cond_af
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v0

    sparse-switch p1, :sswitch_data_102

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->c(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    move-object v3, v0

    :goto_bb
    if-nez v3, :cond_d3

    const/4 v0, 0x6

    const-string v3, "getPreviousMessageId - no cursor"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1b

    :sswitch_c7
    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->e(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    move-object v3, v0

    goto :goto_bb

    :sswitch_cd
    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->d(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    move-object v3, v0

    goto :goto_bb

    :cond_d3
    const-string v0, "_id"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move v0, v1

    :goto_da
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_100

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, p0, :cond_fb

    :goto_e9
    if-eq v0, v2, :cond_fe

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_fe

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_f5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move v2, v0

    goto/16 :goto_1b

    :cond_fb
    add-int/lit8 v0, v0, 0x1

    goto :goto_da

    :cond_fe
    move v0, v2

    goto :goto_f5

    :cond_100
    move v0, v2

    goto :goto_e9

    :sswitch_data_102
    .sparse-switch
        0x1 -> :sswitch_cd
        0x6 -> :sswitch_c7
    .end sparse-switch
.end method

.method public static d(Landroid/content/Context;I)I
    .registers 9

    const/4 v5, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const/4 v6, -0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(status & 2 == 0 ) AND _id=record_id AND file_type!=1 AND file_type!=2 AND dir_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "is_deleted"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "!="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x6

    const-string v4, "getNumUnheardAudioMsgs query start"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/coremobility/integration/app/k;->r:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "out_timestamp DESC,_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_56
    return v0

    :cond_57
    move v0, v6

    goto :goto_56
.end method

.method public static d(Ljava/lang/String;)I
    .registers 7

    const/4 v2, -0x1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->c()Ljava/util/Vector;

    move-result-object v3

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_11

    if-eqz v3, :cond_11

    if-nez p0, :cond_13

    :cond_11
    move v0, v2

    :goto_12
    return v0

    :cond_13
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v4, :cond_31

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    iget-object v5, v0, Lcom/coremobility/app/vnotes/jy;->a:Ljava/lang/String;

    if-eqz v5, :cond_2e

    iget-object v0, v0, Lcom/coremobility/app/vnotes/jy;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v1

    goto :goto_12

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_31
    move v0, v2

    goto :goto_12
.end method

.method private static d(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 9

    const/4 v4, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v6

    const-string v3, "dir_id=1 AND is_deleted=0"

    if-eqz v0, :cond_28

    const-string v1, "getOutboxList query executed"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/coremobility/integration/app/k;->l:Landroid/net/Uri;

    const-string v5, "out_timestamp DESC,_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const-string v0, "getOutboxList query finished"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    return-object v4
.end method

.method public static declared-synchronized d(Landroid/content/Context;II)Lcom/coremobility/k/de;
    .registers 11

    const-class v1, Lcom/coremobility/app/vnotes/cq;

    monitor-enter v1

    const/16 v0, 0x15

    :try_start_5
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "dir_id"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "sender_name"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "sender_mdn"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "sender_email"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "subject"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "recipient_mdns"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "recipient_emails"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "previous_sender"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "guid"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "in_reply_to_guid"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "in_reply_to_name"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "uri"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "status"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "out_timestamp"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "sent_timestamp"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "recv_timestamp"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "read_timestamp"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "repl_timestamp"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "fwd_timestamp"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "_id"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "txt_summary"

    aput-object v3, v0, v2

    new-instance v2, Lcom/coremobility/k/ac;

    const/4 v3, -0x1

    invoke-direct {v2, p2, v3}, Lcom/coremobility/k/ac;-><init>(II)V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    invoke-static {p0, p1, p2, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_99

    new-instance v0, Lcom/coremobility/k/bh;

    const/16 v2, 0x1d

    invoke-direct {v0, v2}, Lcom/coremobility/k/bh;-><init>(I)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_96
    .catchall {:try_start_5 .. :try_end_96} :catchall_201

    const/4 v0, 0x0

    :goto_97
    monitor-exit v1

    return-object v0

    :cond_99
    :try_start_99
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_cd

    const/4 v0, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting info for RecId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], no rows"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    new-instance v0, Lcom/coremobility/k/bh;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/coremobility/k/bh;-><init>(I)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    const/4 v0, 0x0

    goto :goto_97

    :cond_cd
    const/4 v0, 0x7

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "record_id"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    const-string v4, "file_type"

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, "filename_only"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "file_size"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "duration"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, "transcribe_rate"

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "mime_guid"

    aput-object v4, v3, v0

    new-instance v0, Lcom/coremobility/k/de;

    invoke-direct {v0}, Lcom/coremobility/k/de;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/coremobility/k/de;->b(I)V

    const/16 v4, 0x8

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coremobility/k/de;->m(Ljava/lang/String;)V

    const/16 v4, 0x9

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coremobility/k/de;->i(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coremobility/k/de;->k(Ljava/lang/String;)V

    const/4 v4, 0x7

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coremobility/k/de;->h(Ljava/lang/String;)V

    const/4 v4, 0x6

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coremobility/k/de;->g(Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coremobility/k/de;->f(Ljava/lang/String;)V

    const/16 v4, 0x13

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/coremobility/k/de;->a(I)V

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coremobility/k/de;->d(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coremobility/k/de;->c(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coremobility/k/de;->b(Ljava/lang/String;)V

    const/16 v4, 0xc

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/coremobility/k/de;->a(J)V

    const/4 v4, 0x4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coremobility/k/de;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/coremobility/k/de;->b()[J

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0xd

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v4, v5

    invoke-virtual {v0}, Lcom/coremobility/k/de;->b()[J

    move-result-object v4

    const/4 v5, 0x1

    const/16 v6, 0xe

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v4, v5

    invoke-virtual {v0}, Lcom/coremobility/k/de;->b()[J

    move-result-object v4

    const/4 v5, 0x2

    const/16 v6, 0xf

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v4, v5

    invoke-virtual {v0}, Lcom/coremobility/k/de;->b()[J

    move-result-object v4

    const/4 v5, 0x3

    const/16 v6, 0x10

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v4, v5

    invoke-virtual {v0}, Lcom/coremobility/k/de;->b()[J

    move-result-object v4

    const/4 v5, 0x4

    const/16 v6, 0x11

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v4, v5

    invoke-virtual {v0}, Lcom/coremobility/k/de;->b()[J

    move-result-object v4

    const/4 v5, 0x5

    const/16 v6, 0x12

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v4, v5

    const/16 v4, 0xb

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coremobility/k/de;->l(Ljava/lang/String;)V

    const/16 v4, 0x14

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coremobility/k/de;->n(Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v3}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_204

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no MIME with recordId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], no cursor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    new-instance v2, Lcom/coremobility/k/bh;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Lcom/coremobility/k/bh;-><init>(I)V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_1ff
    .catchall {:try_start_99 .. :try_end_1ff} :catchall_201

    goto/16 :goto_97

    :catchall_201
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_204
    :try_start_204
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_23c

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no MIME with recordId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], no rows"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    new-instance v2, Lcom/coremobility/k/bh;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Lcom/coremobility/k/bh;-><init>(I)V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto/16 :goto_97

    :cond_23c
    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/coremobility/k/de;->d(J)V

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/coremobility/k/de;->c(J)V

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/coremobility/k/de;->b(J)V

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coremobility/k/de;->a(Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    new-instance v2, Lcom/coremobility/k/bh;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/coremobility/k/bh;-><init>(I)V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_26e
    .catchall {:try_start_204 .. :try_end_26e} :catchall_201

    goto/16 :goto_97
.end method

.method public static d(Landroid/app/Activity;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "vnotedir"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static d(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "text/csv"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x7f0c002e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_20
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_20} :catch_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :catch_22
    move-exception v1

    const v1, 0x7f0c0072

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_21
.end method

.method public static d()[Ljava/lang/CharSequence;
    .registers 6

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->c()I

    move-result v2

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->c()Ljava/util/Vector;

    move-result-object v3

    add-int/lit8 v0, v2, 0x1

    new-array v4, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f0c001e

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    move v1, v0

    :goto_20
    add-int/lit8 v0, v2, 0x1

    if-ge v1, v0, :cond_5b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v1, -0x1

    invoke-static {v5}, Lcom/coremobility/app/vnotes/cq;->g(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/jy;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_20

    :cond_5b
    return-object v4
.end method

.method private static e(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 9

    const/4 v4, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v6

    const-string v3, "dir_id=6 AND _id=record_id AND file_type!=2 AND is_deleted!=2"

    if-eqz v0, :cond_28

    const-string v1, "getDeletedList query executed"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/coremobility/integration/app/k;->r:Landroid/net/Uri;

    const-string v5, "out_timestamp DESC,_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const-string v0, "getDeletedList query finished"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    return-object v4
.end method

.method public static e(I)Lcom/coremobility/app/vnotes/jy;
    .registers 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->c()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-boolean v2, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-nez v2, :cond_11

    :cond_f
    move-object v0, v1

    :goto_10
    return-object v0

    :cond_11
    :try_start_11
    invoke-virtual {v0, p0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_18

    goto :goto_10

    :catch_18
    move-exception v0

    move-object v0, v1

    goto :goto_10
.end method

.method public static e(II)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UI-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sparse-switch p1, :sswitch_data_50

    :goto_26
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_2b
    const-string v1, ".TXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26

    :sswitch_31
    const-string v1, ".AMR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26

    :sswitch_37
    const-string v1, ".AWB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26

    :sswitch_3d
    const-string v1, ".EVF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26

    :sswitch_43
    const-string v1, ".EVH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26

    :sswitch_49
    const-string v1, ".MP3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26

    nop

    :sswitch_data_50
    .sparse-switch
        0x1 -> :sswitch_2b
        0xb -> :sswitch_3d
        0xc -> :sswitch_43
        0x12 -> :sswitch_31
        0x13 -> :sswitch_37
        0x14 -> :sswitch_49
    .end sparse-switch
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/16 v8, 0xc

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v0, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1c

    :cond_17
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    const-string v1, "[^0-9+]"

    const-string v4, ""

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v8, :cond_33

    if-eq v4, v7, :cond_33

    if-eq v4, v6, :cond_33

    const/4 v5, 0x7

    if-eq v4, v5, :cond_33

    move-object v0, v1

    goto :goto_1b

    :cond_33
    if-ne v4, v8, :cond_46

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x2b

    if-ne v2, v5, :cond_80

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x31

    if-ne v2, v5, :cond_80

    const/4 v2, 0x2

    :cond_46
    if-ne v4, v7, :cond_84

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_82

    :goto_50
    if-lt v4, v6, :cond_62

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x2d

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x3

    :cond_62
    add-int/lit8 v2, v0, 0x3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x2d

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_80
    move-object v0, v1

    goto :goto_1b

    :cond_82
    move-object v0, v1

    goto :goto_1b

    :cond_84
    move v0, v2

    goto :goto_50
.end method

.method public static e(Landroid/content/Context;I)Ljava/util/Vector;
    .registers 3

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/coremobility/app/vnotes/cq;->c(Landroid/content/Context;II)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static e()V
    .registers 1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->e()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->h()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static e(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static e(Landroid/content/Context;II)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;IIZ)Z

    move-result v0

    return v0
.end method

.method public static f(I)I
    .registers 2

    if-nez p0, :cond_6

    const v0, 0x1869f

    :goto_5
    return v0

    :cond_6
    add-int/lit8 v0, p0, -0x1

    goto :goto_5
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v1, 0x0

    :cond_f
    :goto_f
    return-object v1

    :cond_10
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-static {v0, v1}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_f

    const-string v0, "+1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xc

    if-eq v0, v3, :cond_f

    :cond_39
    const-string v0, "+1"

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_ac

    if-nez v2, :cond_ac

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5e
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_80

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_80
    const-string v3, "+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8a

    move-object v1, v0

    goto :goto_f

    :cond_8a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_a9

    if-nez v2, :cond_a9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_f

    :cond_a9
    move-object v1, v0

    goto/16 :goto_f

    :cond_ac
    move-object v0, v1

    goto :goto_5e
.end method

.method public static f()V
    .registers 1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->f()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static f(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static declared-synchronized f(Landroid/content/Context;II)V
    .registers 15

    const/4 v11, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v6, Lcom/coremobility/app/vnotes/cq;

    monitor-enter v6

    :try_start_6
    new-instance v0, Lcom/coremobility/k/at;

    invoke-direct {v0, p1, p2}, Lcom/coremobility/k/at;-><init>(II)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    if-ne p2, v11, :cond_93

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coremobility/app/vnotes/da;->c(I)Lcom/coremobility/app/vnotes/ka;

    move-result-object v0

    move-object v5, v0

    :goto_19
    if-eqz v5, :cond_a4

    invoke-virtual {v5}, Lcom/coremobility/app/vnotes/ka;->b()J

    move-result-wide v3

    long-to-int v0, v3

    int-to-long v3, v0

    :goto_21
    const-wide/16 v7, 0x2

    and-long/2addr v7, v3

    const-wide/16 v9, 0x2

    cmp-long v0, v7, v9

    if-nez v0, :cond_e9

    move v0, v2

    :goto_2b
    if-nez v0, :cond_91

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/16 v8, 0x2

    or-long/2addr v3, v8

    const-string v8, "status"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "read_timestamp"

    invoke-virtual {v0, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v8, 0x6

    const-string v9, "setReadWithId update started"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-ne p2, v11, :cond_ec

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->x:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v1, v0, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x6

    const-string v1, "setReadWithId update ended"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_88

    invoke-virtual {v5}, Lcom/coremobility/app/vnotes/ka;->c()[J

    move-result-object v0

    invoke-virtual {v5, v3, v4}, Lcom/coremobility/app/vnotes/ka;->b(J)V

    const/4 v1, 0x3

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-virtual {v5, v0}, Lcom/coremobility/app/vnotes/ka;->a([J)V

    :cond_88
    :goto_88
    new-instance v0, Lcom/coremobility/k/by;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coremobility/k/by;-><init>(I)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_91
    .catchall {:try_start_6 .. :try_end_91} :catchall_c1

    :cond_91
    :goto_91
    monitor-exit v6

    return-void

    :cond_93
    :try_start_93
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    move-object v5, v0

    goto/16 :goto_19

    :cond_a4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "status"

    aput-object v4, v0, v3

    if-ne p2, v11, :cond_c4

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    invoke-static {p0, p1, v0}, Lcom/coremobility/app/vnotes/da;->a(Landroid/content/Context;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_b5
    if-nez v0, :cond_ca

    new-instance v0, Lcom/coremobility/k/by;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/coremobility/k/by;-><init>(I)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_c0
    .catchall {:try_start_93 .. :try_end_c0} :catchall_c1

    goto :goto_91

    :catchall_c1
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_c4
    const/4 v3, 0x3

    :try_start_c5
    invoke-static {p0, v3, p1, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_b5

    :cond_ca
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_de

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    new-instance v0, Lcom/coremobility/k/by;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lcom/coremobility/k/by;-><init>(I)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto :goto_91

    :cond_de
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_21

    :cond_e9
    move v0, v1

    goto/16 :goto_2b

    :cond_ec
    sget-object v5, Lcom/coremobility/app/vnotes/cf;->l:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v0, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x6

    const-string v2, "setReadWithId update ended"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    if-eqz v0, :cond_140

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cf;->c(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->c()[J

    move-result-object v2

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/app/vnotes/ka;->b(J)V

    const/4 v3, 0x3

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/coremobility/app/vnotes/ka;->a([J)V

    move v0, v1

    :goto_12e
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Lcom/coremobility/app/vnotes/cf;->a(IZZ)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/coremobility/app/vnotes/cf;->a(IZ)V
    :try_end_13e
    .catchall {:try_start_c5 .. :try_end_13e} :catchall_c1

    goto/16 :goto_88

    :cond_140
    move v0, v1

    goto :goto_12e
.end method

.method public static f(Landroid/content/Context;I)Z
    .registers 10

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/coremobility/k/as;

    invoke-direct {v1, p1}, Lcom/coremobility/k/as;-><init>(I)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "dir_id"

    aput-object v4, v3, v0

    const/4 v4, 0x3

    invoke-static {p0, v4, p1, v3}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_94

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_62

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VnoteSend - attempted to send a non-draft vnote"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    new-instance v1, Lcom/coremobility/k/bx;

    invoke-direct {v1, v0}, Lcom/coremobility/k/bx;-><init>(Z)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    :goto_61
    return v0

    :cond_62
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const-string v0, "dir_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "out_timestamp"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p0, p1, v1}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;ILandroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    iget v1, v1, Lcom/coremobility/app/vnotes/cf;->i:I

    if-ltz v1, :cond_8b

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    iget v2, v1, Lcom/coremobility/app/vnotes/cf;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/coremobility/app/vnotes/cf;->i:I

    :cond_8b
    new-instance v1, Lcom/coremobility/k/bx;

    invoke-direct {v1, v0}, Lcom/coremobility/k/bx;-><init>(Z)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto :goto_61

    :cond_94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VnoteSend - draft not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/coremobility/k/bx;

    invoke-direct {v1, v0}, Lcom/coremobility/k/bx;-><init>(Z)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto :goto_61
.end method

.method public static g(Ljava/lang/String;)Lcom/coremobility/app/vnotes/hr;
    .registers 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/coremobility/j/s;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0}, Lcom/coremobility/j/s;->a(Ljava/lang/String;)Z

    move-result v8

    const/4 v5, 0x0

    if-nez v0, :cond_57

    const-string v0, " ()-+"

    invoke-static {p0, v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coremobility/j/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    move v7, v0

    move-object v0, v1

    :goto_1b
    if-eqz v7, :cond_55

    invoke-static {v0}, Lcom/coremobility/j/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_21
    new-array v9, v3, [I

    invoke-static {v2, v9}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v1

    if-eqz v1, :cond_49

    iget-object v5, v1, Lcom/coremobility/integration/f/b;->c:Landroid/net/Uri;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/integration/f/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_47

    if-eqz v7, :cond_3b

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3b
    :goto_3b
    move v6, v3

    move-object v1, v0

    :goto_3d
    if-eqz v7, :cond_4f

    :goto_3f
    new-instance v0, Lcom/coremobility/app/vnotes/hr;

    aget v4, v9, v4

    invoke-direct/range {v0 .. v6}, Lcom/coremobility/app/vnotes/hr;-><init>(Ljava/lang/String;Ljava/lang/String;IILandroid/net/Uri;Z)V

    return-object v0

    :cond_47
    move-object v0, v1

    goto :goto_3b

    :cond_49
    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v6, v4

    goto :goto_3d

    :cond_4f
    if-eqz v8, :cond_53

    const/4 v3, 0x2

    goto :goto_3f

    :cond_53
    move v3, v4

    goto :goto_3f

    :cond_55
    move-object v2, p0

    goto :goto_21

    :cond_57
    move v7, v0

    move-object v0, p0

    goto :goto_1b
.end method

.method public static g(Landroid/content/Context;I)Lcom/coremobility/k/de;
    .registers 3

    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lcom/coremobility/app/vnotes/cq;->d(Landroid/content/Context;II)Lcom/coremobility/k/de;

    move-result-object v0

    return-object v0
.end method

.method public static g(I)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->e(I)Lcom/coremobility/app/vnotes/jy;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, v0, Lcom/coremobility/app/vnotes/jy;->b:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_8

    :catch_c
    move-exception v0

    const-string v0, ""

    goto :goto_8
.end method

.method public static g()V
    .registers 3

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/kb;->n()V

    :cond_12
    const/4 v0, 0x6

    const-string v1, "VnoteApp cleared Global cache"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static g(Landroid/app/Activity;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "vnotedir"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "usefilter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static g(Landroid/content/Context;II)Z
    .registers 7

    const/4 v3, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_62

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    sget-object v1, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->b:[Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/coremobility/app/vnotes/da;->a(Landroid/content/Context;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vnote retrieve failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_28
    return v0

    :cond_29
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_46

    new-instance v0, Lcom/coremobility/app/vnotes/ka;

    invoke-direct {v0}, Lcom/coremobility/app/vnotes/ka;-><init>()V

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->c(Landroid/database/Cursor;)Lcom/coremobility/k/de;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/coremobility/app/vnotes/da;->a(Lcom/coremobility/k/de;Lcom/coremobility/app/vnotes/ka;)Z

    invoke-static {p0, p1, v0}, Lcom/coremobility/app/vnotes/da;->a(Landroid/content/Context;ILcom/coremobility/app/vnotes/ka;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/app/vnotes/ka;)Z

    move-result v0

    goto :goto_28

    :cond_46
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vnote retrieve failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_28

    :cond_62
    invoke-static {p1}, Lcom/coremobility/app/vnotes/cq;->m(I)Z

    move-result v0

    goto :goto_28
.end method

.method public static h()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->q()Lcom/coremobility/app/vnotes/cp;

    move-result-object v0

    iget-object v0, v0, Lcom/coremobility/app/vnotes/cp;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static h(I)Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-nez v0, :cond_7

    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->c()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/jy;->b:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_1a

    goto :goto_6

    :catch_1a
    move-exception v0

    :cond_1b
    move-object v0, v1

    goto :goto_6
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :goto_0
    const-string v0, "+1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "+1"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_11
    return-object p0
.end method

.method public static h(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static declared-synchronized h(Landroid/content/Context;I)V
    .registers 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v4, Lcom/coremobility/app/vnotes/cq;

    monitor-enter v4

    :try_start_5
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    if-eqz v0, :cond_cc

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->b()J

    move-result-wide v5

    long-to-int v0, v5

    move v3, v0

    :goto_1b
    int-to-long v5, v3

    const-wide/16 v7, 0x2

    and-long/2addr v5, v7

    const-wide/16 v7, 0x2

    cmp-long v0, v5, v7

    if-nez v0, :cond_107

    move v0, v2

    :goto_26
    if-eqz v0, :cond_ca

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    int-to-long v5, v3

    const-wide/16 v7, -0x3

    and-long/2addr v5, v7

    long-to-int v3, v5

    int-to-long v5, v3

    const-wide/32 v7, 0x100000

    or-long/2addr v5, v7

    long-to-int v3, v5

    const-string v5, "status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "read_timestamp"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x6

    const-string v6, "setUnreadWithId update started"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/coremobility/app/vnotes/cf;->l:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x6

    const-string v2, "setUnreadWithId update ended"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    if-eqz v0, :cond_90

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->c()[J

    move-result-object v2

    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Lcom/coremobility/app/vnotes/ka;->b(J)V

    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    aput-wide v6, v2, v5

    invoke-virtual {v0, v2}, Lcom/coremobility/app/vnotes/ka;->a([J)V

    :cond_90
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    if-eqz v0, :cond_10a

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->c(Ljava/lang/String;)Z

    move-result v0

    :goto_a8
    int-to-long v1, v3

    const-wide/16 v5, 0x1000

    and-long/2addr v1, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_c1

    if-nez v0, :cond_c1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v1, p1}, Lcom/coremobility/app/vnotes/cq;->d(Landroid/content/Context;II)Lcom/coremobility/k/de;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/de;Z)V

    :cond_c1
    new-instance v0, Lcom/coremobility/k/by;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coremobility/k/by;-><init>(I)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_ca
    .catchall {:try_start_5 .. :try_end_ca} :catchall_e5

    :cond_ca
    :goto_ca
    monitor-exit v4

    return-void

    :cond_cc
    const/4 v0, 0x1

    :try_start_cd
    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "status"

    aput-object v5, v0, v3

    const/4 v3, 0x3

    invoke-static {p0, v3, p1, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_e8

    new-instance v0, Lcom/coremobility/k/by;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/coremobility/k/by;-><init>(I)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_e4
    .catchall {:try_start_cd .. :try_end_e4} :catchall_e5

    goto :goto_ca

    :catchall_e5
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_e8
    :try_start_e8
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_fc

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    new-instance v0, Lcom/coremobility/k/by;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lcom/coremobility/k/by;-><init>(I)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto :goto_ca

    :cond_fc
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_104
    .catchall {:try_start_e8 .. :try_end_104} :catchall_e5

    move v3, v0

    goto/16 :goto_1b

    :cond_107
    move v0, v1

    goto/16 :goto_26

    :cond_10a
    move v0, v1

    goto :goto_a8
.end method

.method public static i(I)V
    .registers 5

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    iget-object v1, v0, Lcom/coremobility/app/vnotes/jy;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v2, p0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    :cond_23
    iput-object v1, v0, Lcom/coremobility/app/vnotes/jy;->b:Ljava/lang/String;

    goto :goto_4
.end method

.method public static i(Landroid/app/Activity;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "vnotedir"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "usefilter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static i(Landroid/content/Context;I)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static i()Z
    .registers 4

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/cf;->a()Lcom/coremobility/integration/b;

    move-result-object v1

    invoke-static {}, Lcom/coremobility/integration/d/h;->a()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_29

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_29

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Lcom/coremobility/integration/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_29
    const/4 v0, 0x1

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public static i(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "activate@vvm.sprint.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static j(I)I
    .registers 15

    const-wide/16 v12, 0x0

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 v0, 0x6

    const-string v2, "FilteredUnheardAudio must for inbox"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    :goto_10
    return v0

    :cond_11
    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->c()Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_69

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_69

    const-string v0, "status"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v0, "file_type"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v0, "out_timestamp"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move v0, v1

    :cond_3a
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v8, v2

    const-wide/16 v10, 0x2

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-nez v2, :cond_67

    const/4 v2, 0x1

    :goto_47
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-eqz v8, :cond_60

    if-eqz v2, :cond_60

    if-eq v6, v3, :cond_60

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v8, v2

    invoke-static {v8, v9}, Lcom/coremobility/app/vnotes/cq;->a(J)Z

    move-result v2

    if-eqz v2, :cond_60

    add-int/lit8 v0, v0, 0x1

    :cond_60
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_10

    :cond_67
    move v2, v1

    goto :goto_47

    :cond_69
    move v0, v3

    goto :goto_10
.end method

.method public static j(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static j()Z
    .registers 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/cf;->q()Lcom/coremobility/app/vnotes/cp;

    move-result-object v3

    iget v3, v3, Lcom/coremobility/app/vnotes/cp;->b:I

    if-eqz v3, :cond_1d

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/cf;->q()Lcom/coremobility/app/vnotes/cp;

    move-result-object v1

    iget v1, v1, Lcom/coremobility/app/vnotes/cp;->b:I

    if-ge v2, v1, :cond_1e

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static j(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "vtt_expiry_notice@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v2, ""

    :try_start_2
    invoke-static {p0}, Lcom/coremobility/integration/file/b;->b(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-static {p0}, Lcom/coremobility/integration/file/b;->c(Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v1, v3

    new-array v3, v1, [B

    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_21

    const/16 v0, 0xd

    const/16 v2, 0x20

    :try_start_1c
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_3f

    move-result-object v0

    :goto_20
    return-object v0

    :catch_21
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_24
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTextFileContent failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_20

    :catch_3f
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_24
.end method

.method public static k(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static k()Z
    .registers 3

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->q()Lcom/coremobility/app/vnotes/cp;

    move-result-object v2

    iget v2, v2, Lcom/coremobility/app/vnotes/cp;->c:I

    if-eqz v2, :cond_1d

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->q()Lcom/coremobility/app/vnotes/cp;

    move-result-object v0

    iget v0, v0, Lcom/coremobility/app/vnotes/cp;->c:I

    if-ge v1, v0, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public static k(I)Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x14

    if-eq p0, v1, :cond_1e

    const/16 v1, 0x12

    if-eq p0, v1, :cond_1e

    const/16 v1, 0x15

    if-eq p0, v1, :cond_1e

    const/16 v1, 0x16

    if-eq p0, v1, :cond_1e

    const/16 v1, 0xb

    if-eq p0, v1, :cond_1e

    const/16 v1, 0xc

    if-eq p0, v1, :cond_1e

    if-eq p0, v0, :cond_1e

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1f

    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public static l(I)I
    .registers 2

    const/16 v0, 0x12

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0x15

    if-ne p0, v0, :cond_c

    const/4 v0, 0x3

    goto :goto_5

    :cond_c
    const/16 v0, 0x16

    if-ne p0, v0, :cond_12

    const/4 v0, 0x4

    goto :goto_5

    :cond_12
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v2, ""

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "smvvm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/coremobility/integration/file/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-static {v0, p0}, Lcom/coremobility/integration/file/b;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v0, v3

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_39} :catch_42

    const/16 v0, 0xd

    const/16 v2, 0x20

    :try_start_3d
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_60

    move-result-object v0

    :goto_41
    return-object v0

    :catch_42
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_45
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTextFileContentFromExternal failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_41

    :catch_60
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_45
.end method

.method public static l(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static l()Z
    .registers 3

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->q()Lcom/coremobility/app/vnotes/cp;

    move-result-object v2

    iget v2, v2, Lcom/coremobility/app/vnotes/cp;->a:I

    if-eqz v2, :cond_1d

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->q()Lcom/coremobility/app/vnotes/cp;

    move-result-object v0

    iget v0, v0, Lcom/coremobility/app/vnotes/cp;->a:I

    if-ge v1, v0, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public static m()I
    .registers 6

    const v0, 0x7f0c00e1

    const v2, 0x7f0c00e0

    const/4 v1, 0x0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/kb;->c()I

    move-result v3

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->a()Lcom/coremobility/app/vnotes/kd;

    move-result-object v4

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->b()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    packed-switch v3, :pswitch_data_4a

    :cond_1e
    :pswitch_1e
    move v0, v1

    :cond_1f
    :goto_1f
    return v0

    :pswitch_20
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->f()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_1f

    :pswitch_2a
    if-eqz v5, :cond_1e

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->f()Z

    move-result v1

    if-nez v1, :cond_1f

    move v0, v2

    goto :goto_1f

    :pswitch_37
    iget-object v0, v4, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    if-eqz v0, :cond_44

    iget v0, v0, Lcom/coremobility/app/vnotes/ke;->c:I

    if-nez v0, :cond_44

    const/4 v0, 0x1

    :goto_40
    if-eqz v0, :cond_46

    move v0, v2

    goto :goto_1f

    :cond_44
    move v0, v1

    goto :goto_40

    :cond_46
    move v0, v1

    goto :goto_1f

    :pswitch_48
    move v0, v1

    goto :goto_1f

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_20
        :pswitch_20
        :pswitch_48
        :pswitch_48
        :pswitch_1e
        :pswitch_37
        :pswitch_2a
        :pswitch_1e
        :pswitch_48
        :pswitch_2a
    .end packed-switch
.end method

.method public static m(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/app/vnotes/CM_VnoteAutoForwardSettingsForm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static m(I)Z
    .registers 10

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    if-eqz v0, :cond_19

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/app/vnotes/ka;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_18

    move-result v3

    :cond_17
    :goto_17
    return v3

    :catch_18
    move-exception v0

    :cond_19
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/coremobility/app/vnotes/cq;->c:[Ljava/lang/String;

    invoke-static {v0, p0, v2}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_50

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_56

    move v0, v1

    move v2, v1

    :cond_2d
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v6, v5

    invoke-static {v6, v7}, Lcom/coremobility/app/vnotes/cq;->a(J)Z

    move-result v6

    if-eqz v6, :cond_52

    move v2, v3

    :cond_39
    :goto_39
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2d

    :goto_3f
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-eqz v2, :cond_50

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_50
    move v3, v1

    goto :goto_17

    :cond_52
    if-ne v5, v8, :cond_39

    move v0, v3

    goto :goto_39

    :cond_56
    move v0, v1

    move v2, v1

    goto :goto_3f
.end method

.method public static n(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/app/vnotes/SM_SocialAccountSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static n()Z
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    mul-long v1, v2, v4

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bytes avail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const-wide/32 v3, 0x7a120

    cmp-long v1, v1, v3

    if-gez v1, :cond_3b

    :goto_3a
    return v0

    :cond_3b
    const/4 v0, 0x1

    goto :goto_3a
.end method

.method public static n(I)Z
    .registers 3

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_10

    :cond_4
    :pswitch_4
    const/4 v0, 0x1

    :goto_5
    :pswitch_5
    return v0

    :pswitch_6
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->f()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_5

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
