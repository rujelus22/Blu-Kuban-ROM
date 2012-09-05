.class Lcom/android/email/combined/MessageBehavior$8;
.super Ljava/lang/Object;
.source "MessageBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/combined/MessageBehavior;->removeMessageForDate(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/combined/MessageBehavior;

.field final synthetic val$remainDay:J

.field final synthetic val$remoteAccountId:I


# direct methods
.method constructor <init>(Lcom/android/email/combined/MessageBehavior;JI)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 885
    iput-object p1, p0, Lcom/android/email/combined/MessageBehavior$8;->this$0:Lcom/android/email/combined/MessageBehavior;

    iput-wide p2, p0, Lcom/android/email/combined/MessageBehavior$8;->val$remainDay:J

    iput p4, p0, Lcom/android/email/combined/MessageBehavior$8;->val$remoteAccountId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 887
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/combined/MessageBehavior$8;->this$0:Lcom/android/email/combined/MessageBehavior;

    invoke-virtual {v1}, Lcom/android/email/combined/MessageBehavior;->notifyMessageStarted()V

    .line 893
    const-wide/16 v7, 0x0

    .line 894
    .local v7, accountKey:J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/email/combined/MessageBehavior$8;->val$remainDay:J

    .line 895
    .local v10, delDate:J
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 897
    .local v13, hAttachments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 901
    .local v9, c:Landroid/database/Cursor;
    :try_start_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/combined/MessageBehavior$8;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "accountKey"

    aput-object v5, v3, v4

    const-string v4, "sevenAccountKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/combined/MessageBehavior$8;->val$remoteAccountId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 907
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 908
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 910
    :cond_5a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5d
    .catchall {:try_start_13 .. :try_end_5d} :catchall_21e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_5d} :catch_1fc

    .line 911
    const/4 v9, 0x0

    .line 924
    :try_start_5e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/combined/MessageBehavior$8;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "accountKey = ? and timeStamp <= ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v5, v6

    const/4 v6, 0x1

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 931
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 932
    const/4 v14, 0x0

    .local v14, i:I
    :goto_b5
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v14, v1, :cond_e0

    .line 933
    invoke-interface {v9, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    add-int/lit8 v14, v14, 0x1

    goto :goto_b5

    .line 937
    .end local v14           #i:I
    :cond_e0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_e3
    .catchall {:try_start_5e .. :try_end_e3} :catchall_1f4
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_e3} :catch_1eb

    .line 938
    const/4 v9, 0x0

    .line 941
    if-eqz v9, :cond_ea

    .line 942
    :try_start_e6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 943
    const/4 v9, 0x0

    .line 948
    :cond_ea
    :goto_ea
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/combined/MessageBehavior$8;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey = ? and timeStamp <= ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 953
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeMessageForDate sevenAccountKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/combined/MessageBehavior$8;->val$remoteAccountId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeMessageForDate accountKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeMessageForDate remainDay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/combined/MessageBehavior$8;->val$remainDay:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeMessageForDate delDate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_198
    .catchall {:try_start_e6 .. :try_end_198} :catchall_21e
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_198} :catch_1fc

    .line 962
    if-eqz v9, :cond_19e

    .line 963
    :try_start_19a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_19d} :catch_226

    .line 964
    const/4 v9, 0x0

    .line 972
    :cond_19e
    :goto_19e
    :try_start_19e
    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 974
    .local v16, key:Ljava/util/Set;
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, iterator:Ljava/util/Iterator;
    :goto_1a6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e3

    .line 975
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 976
    .local v17, keyName:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 978
    .local v19, valueName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/combined/MessageBehavior$8;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v7, v8, v2, v3}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1c9} :catch_1ca

    goto :goto_1a6

    .line 982
    .end local v15           #iterator:Ljava/util/Iterator;
    .end local v16           #key:Ljava/util/Set;
    .end local v17           #keyName:Ljava/lang/String;
    .end local v19           #valueName:Ljava/lang/String;
    :catch_1ca
    move-exception v12

    .line 983
    .local v12, e:Ljava/lang/Exception;
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    .end local v12           #e:Ljava/lang/Exception;
    :cond_1e3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/combined/MessageBehavior$8;->this$0:Lcom/android/email/combined/MessageBehavior;

    invoke-virtual {v1, v7, v8}, Lcom/android/email/combined/MessageBehavior;->notifyMessageFinished(J)V

    .line 988
    return-void

    .line 939
    :catch_1eb
    move-exception v1

    .line 941
    if-eqz v9, :cond_ea

    .line 942
    :try_start_1ee
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 943
    const/4 v9, 0x0

    goto/16 :goto_ea

    .line 941
    :catchall_1f4
    move-exception v1

    if-eqz v9, :cond_1fb

    .line 942
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 943
    const/4 v9, 0x0

    :cond_1fb
    throw v1
    :try_end_1fc
    .catchall {:try_start_1ee .. :try_end_1fc} :catchall_21e
    .catch Ljava/lang/Exception; {:try_start_1ee .. :try_end_1fc} :catch_1fc

    .line 958
    :catch_1fc
    move-exception v18

    .line 959
    .local v18, s1:Ljava/lang/Exception;
    :try_start_1fd
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_217
    .catchall {:try_start_1fd .. :try_end_217} :catchall_21e

    .line 962
    if-eqz v9, :cond_19e

    .line 963
    :try_start_219
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_21c
    .catch Ljava/lang/Exception; {:try_start_219 .. :try_end_21c} :catch_229

    .line 964
    const/4 v9, 0x0

    goto :goto_19e

    .line 961
    .end local v18           #s1:Ljava/lang/Exception;
    :catchall_21e
    move-exception v1

    .line 962
    if-eqz v9, :cond_225

    .line 963
    :try_start_221
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_224
    .catch Ljava/lang/Exception; {:try_start_221 .. :try_end_224} :catch_22c

    .line 964
    const/4 v9, 0x0

    .line 967
    :cond_225
    :goto_225
    throw v1

    .line 966
    :catch_226
    move-exception v1

    goto/16 :goto_19e

    .restart local v18       #s1:Ljava/lang/Exception;
    :catch_229
    move-exception v1

    goto/16 :goto_19e

    .end local v18           #s1:Ljava/lang/Exception;
    :catch_22c
    move-exception v2

    goto :goto_225
.end method
