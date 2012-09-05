.class Lcom/android/sprintmenu/Dataprofile_Edit$1;
.super Landroid/os/Handler;
.source "Dataprofile_Edit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/Dataprofile_Edit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/Dataprofile_Edit;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/Dataprofile_Edit;)V
    .registers 2
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 23
    .parameter "msg"

    .prologue
    .line 304
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_6dc

    .line 475
    :cond_9
    :goto_9
    return-void

    .line 306
    :pswitch_a
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    const-string v18, "GET response incoming!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 309
    .local v4, ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_29

    .line 311
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    const-string v18, "AsyncResult Exception Occur!!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 314
    :cond_29
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-nez v17, :cond_39

    .line 316
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ar.result == NULL! - No answer"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 319
    :cond_39
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [B

    check-cast v17, [B

    sput-object v17, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    const/16 v19, 0x0

    aget-byte v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/sprintmenu/Dataprofile_Edit;->NAI_length:I

    .line 322
    const/4 v8, 0x1

    .line 325
    .local v8, offset:I
    new-instance v16, Ljava/lang/String;

    const-string v17, ""

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 326
    .local v16, user_name:Ljava/lang/String;
    new-instance v14, Ljava/lang/String;

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 327
    .local v14, spi_mn_ha:Ljava/lang/String;
    new-instance v13, Ljava/lang/String;

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 328
    .local v13, spi_mn_aaa:Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 329
    .local v3, aaa_pw:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 332
    .local v5, ha_pw:Ljava/lang/String;
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "buf[0]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    const/16 v20, 0x0

    aget-byte v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NAI_length:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit;->NAI_length:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v6, 0x0

    .local v6, i:I
    :goto_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit;->NAI_length:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_11b

    .line 336
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "buf"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    add-int v20, v6, v8

    aget-byte v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    add-int v19, v6, v8

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 334
    add-int/lit8 v6, v6, 0x1

    goto :goto_c8

    .line 339
    :cond_11b
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "user_name:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    #getter for: Lcom/android/sprintmenu/Dataprofile_Edit;->User_NamePref:Landroid/preference/EditTextPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$100(Lcom/android/sprintmenu/Dataprofile_Edit;)Landroid/preference/EditTextPreference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    #getter for: Lcom/android/sprintmenu/Dataprofile_Edit;->User_NamePref:Landroid/preference/EditTextPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$100(Lcom/android/sprintmenu/Dataprofile_Edit;)Landroid/preference/EditTextPreference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit;->NAI_length:I

    move/from16 v17, v0

    add-int v8, v8, v17

    .line 345
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v15, v0, [B

    .line 346
    .local v15, temp:[B
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "offset:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v6, 0x0

    :goto_18c
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v6, v0, :cond_1e2

    .line 349
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "spi_mn_ha:buf["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    add-int v20, v6, v8

    aget-byte v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    add-int v19, v6, v8

    aget-byte v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 351
    sget-object v17, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    add-int v18, v6, v8

    aget-byte v17, v17, v18

    aput-byte v17, v15, v6

    .line 347
    add-int/lit8 v6, v6, 0x1

    goto :goto_18c

    .line 353
    :cond_1e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    #calls: Lcom/android/sprintmenu/Dataprofile_Edit;->byteArrayToInt([B)I
    invoke-static {v15}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$200([B)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/sprintmenu/Dataprofile_Edit;->MN_HA_value:I

    .line 354
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "spi_mn_ha(int):"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit;->MN_HA_value:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "spi_mn_ha:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    #getter for: Lcom/android/sprintmenu/Dataprofile_Edit;->SPI_MN_HAPref:Landroid/preference/EditTextPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$300(Lcom/android/sprintmenu/Dataprofile_Edit;)Landroid/preference/EditTextPreference;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit;->MN_HA_value:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    #getter for: Lcom/android/sprintmenu/Dataprofile_Edit;->SPI_MN_HAPref:Landroid/preference/EditTextPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$300(Lcom/android/sprintmenu/Dataprofile_Edit;)Landroid/preference/EditTextPreference;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit;->MN_HA_value:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 359
    add-int/lit8 v8, v8, 0x4

    .line 361
    const/4 v6, 0x0

    :goto_271
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v6, v0, :cond_29b

    .line 363
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    add-int v19, v6, v8

    aget-byte v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 364
    sget-object v17, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    add-int v18, v6, v8

    aget-byte v17, v17, v18

    aput-byte v17, v15, v6

    .line 361
    add-int/lit8 v6, v6, 0x1

    goto :goto_271

    .line 366
    :cond_29b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    #calls: Lcom/android/sprintmenu/Dataprofile_Edit;->byteArrayToInt([B)I
    invoke-static {v15}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$200([B)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/sprintmenu/Dataprofile_Edit;->MN_AAA_value:I

    .line 367
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "spi_mn_aaa:(int)"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit;->MN_AAA_value:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    #getter for: Lcom/android/sprintmenu/Dataprofile_Edit;->SPI_MN_AAAPref:Landroid/preference/EditTextPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$400(Lcom/android/sprintmenu/Dataprofile_Edit;)Landroid/preference/EditTextPreference;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit;->MN_AAA_value:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    #getter for: Lcom/android/sprintmenu/Dataprofile_Edit;->SPI_MN_AAAPref:Landroid/preference/EditTextPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$400(Lcom/android/sprintmenu/Dataprofile_Edit;)Landroid/preference/EditTextPreference;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit;->MN_AAA_value:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 371
    add-int/lit8 v8, v8, 0x4

    .line 372
    sget-object v17, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8           #offset:I
    .local v9, offset:I
    aget-byte v10, v17, v8

    .line 373
    .local v10, pev_tunnel_value:I
    if-eqz v10, :cond_37c

    .line 375
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    const-string v18, "pev_tunnel_value TRUE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    #getter for: Lcom/android/sprintmenu/Dataprofile_Edit;->Pev_TunnelPref:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$500(Lcom/android/sprintmenu/Dataprofile_Edit;)Landroid/preference/CheckBoxPreference;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 384
    :goto_32d
    new-instance v7, Ljava/lang/String;

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 385
    .local v7, m_home_addr:Ljava/lang/String;
    const/4 v6, 0x3

    :goto_337
    if-ltz v6, :cond_39c

    .line 387
    sget-object v17, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    add-int v18, v9, v6

    aget-byte v17, v17, v18

    if-gez v17, :cond_395

    sget-object v17, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    add-int v18, v9, v6

    aget-byte v17, v17, v18

    move/from16 v0, v17

    add-int/lit16 v2, v0, 0x100

    .line 388
    .local v2, IP_intval:I
    :goto_34b
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 389
    if-eqz v6, :cond_379

    .line 390
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 385
    :cond_379
    add-int/lit8 v6, v6, -0x1

    goto :goto_337

    .line 380
    .end local v2           #IP_intval:I
    .end local v7           #m_home_addr:Ljava/lang/String;
    :cond_37c
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    const-string v18, "pev_tunnel_value FALSE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    #getter for: Lcom/android/sprintmenu/Dataprofile_Edit;->Pev_TunnelPref:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$500(Lcom/android/sprintmenu/Dataprofile_Edit;)Landroid/preference/CheckBoxPreference;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_32d

    .line 387
    .restart local v7       #m_home_addr:Ljava/lang/String;
    :cond_395
    sget-object v17, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    add-int v18, v9, v6

    aget-byte v2, v17, v18

    goto :goto_34b

    .line 392
    :cond_39c
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "m_home_addr:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    #getter for: Lcom/android/sprintmenu/Dataprofile_Edit;->M_Home_AddrPref:Landroid/preference/EditTextPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$600(Lcom/android/sprintmenu/Dataprofile_Edit;)Landroid/preference/EditTextPreference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    #getter for: Lcom/android/sprintmenu/Dataprofile_Edit;->M_Home_AddrPref:Landroid/preference/EditTextPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$600(Lcom/android/sprintmenu/Dataprofile_Edit;)Landroid/preference/EditTextPreference;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/sprintmenu/Dataprofile_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v7}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$700(Lcom/android/sprintmenu/Dataprofile_Edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 395
    add-int/lit8 v8, v9, 0x4

    .line 402
    .end local v9           #offset:I
    .restart local v8       #offset:I
    new-instance v11, Ljava/lang/String;

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 403
    .local v11, prim_home_addr:Ljava/lang/String;
    const/4 v6, 0x3

    :goto_3ec
    if-ltz v6, :cond_438

    .line 405
    sget-object v17, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    add-int v18, v8, v6

    aget-byte v17, v17, v18

    if-gez v17, :cond_431

    sget-object v17, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    add-int v18, v8, v6

    aget-byte v17, v17, v18

    move/from16 v0, v17

    add-int/lit16 v2, v0, 0x100

    .line 406
    .restart local v2       #IP_intval:I
    :goto_400
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 407
    if-eqz v6, :cond_42e

    .line 408
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 403
    :cond_42e
    add-int/lit8 v6, v6, -0x1

    goto :goto_3ec

    .line 405
    .end local v2           #IP_intval:I
    :cond_431
    sget-object v17, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    add-int v18, v8, v6

    aget-byte v2, v17, v18

    goto :goto_400

    .line 410
    :cond_438
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "prim_home_addr:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    #getter for: Lcom/android/sprintmenu/Dataprofile_Edit;->Prim_Home_AddrPref:Landroid/preference/EditTextPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$800(Lcom/android/sprintmenu/Dataprofile_Edit;)Landroid/preference/EditTextPreference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    #getter for: Lcom/android/sprintmenu/Dataprofile_Edit;->Prim_Home_AddrPref:Landroid/preference/EditTextPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$800(Lcom/android/sprintmenu/Dataprofile_Edit;)Landroid/preference/EditTextPreference;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/sprintmenu/Dataprofile_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v11}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$700(Lcom/android/sprintmenu/Dataprofile_Edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 413
    add-int/lit8 v8, v8, 0x4

    .line 416
    new-instance v12, Ljava/lang/String;

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 418
    .local v12, sec_home_agent:Ljava/lang/String;
    const/4 v6, 0x3

    :goto_488
    if-ltz v6, :cond_4d4

    .line 420
    sget-object v17, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    add-int v18, v8, v6

    aget-byte v17, v17, v18

    if-gez v17, :cond_4cd

    sget-object v17, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    add-int v18, v8, v6

    aget-byte v17, v17, v18

    move/from16 v0, v17

    add-int/lit16 v2, v0, 0x100

    .line 421
    .restart local v2       #IP_intval:I
    :goto_49c
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 422
    if-eqz v6, :cond_4ca

    .line 423
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 418
    :cond_4ca
    add-int/lit8 v6, v6, -0x1

    goto :goto_488

    .line 420
    .end local v2           #IP_intval:I
    :cond_4cd
    sget-object v17, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    add-int v18, v8, v6

    aget-byte v2, v17, v18

    goto :goto_49c

    .line 425
    :cond_4d4
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "sec_home_agent:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    #getter for: Lcom/android/sprintmenu/Dataprofile_Edit;->Sec_Home_AgentPref:Landroid/preference/EditTextPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$900(Lcom/android/sprintmenu/Dataprofile_Edit;)Landroid/preference/EditTextPreference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    #getter for: Lcom/android/sprintmenu/Dataprofile_Edit;->Sec_Home_AgentPref:Landroid/preference/EditTextPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$900(Lcom/android/sprintmenu/Dataprofile_Edit;)Landroid/preference/EditTextPreference;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/sprintmenu/Dataprofile_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v12}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$700(Lcom/android/sprintmenu/Dataprofile_Edit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 428
    add-int/lit8 v8, v8, 0x4

    .line 430
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "offset :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    aget-byte v18, v18, v8

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/sprintmenu/Dataprofile_Edit;->MN_AAA_length:I

    .line 432
    add-int/lit8 v8, v8, 0x1

    .line 433
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MN_AAA_length :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit;->MN_AAA_length:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v6, 0x0

    :goto_56f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit;->MN_AAA_length:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_5a0

    .line 436
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    add-int v19, v6, v8

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 434
    add-int/lit8 v6, v6, 0x1

    goto :goto_56f

    .line 438
    :cond_5a0
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "aaa_pw:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    #getter for: Lcom/android/sprintmenu/Dataprofile_Edit;->AA_PasswordPref:Landroid/preference/EditTextPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$1000(Lcom/android/sprintmenu/Dataprofile_Edit;)Landroid/preference/EditTextPreference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    #getter for: Lcom/android/sprintmenu/Dataprofile_Edit;->AA_PasswordPref:Landroid/preference/EditTextPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$1000(Lcom/android/sprintmenu/Dataprofile_Edit;)Landroid/preference/EditTextPreference;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit;->MN_AAA_length:I

    move/from16 v17, v0

    add-int v8, v8, v17

    .line 445
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "offset :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    aget-byte v18, v18, v8

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/sprintmenu/Dataprofile_Edit;->MN_HA_length:I

    .line 447
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MN_HA_length :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit;->MN_HA_length:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    add-int/lit8 v8, v8, 0x1

    .line 449
    const/4 v6, 0x0

    :goto_63d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit;->MN_HA_length:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_66e

    .line 451
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/android/sprintmenu/Dataprofile_Edit;->buf:[B

    add-int v19, v6, v8

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 449
    add-int/lit8 v6, v6, 0x1

    goto :goto_63d

    .line 453
    :cond_66e
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ha_pw:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    #getter for: Lcom/android/sprintmenu/Dataprofile_Edit;->HA_PasswordPref:Landroid/preference/EditTextPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$1100(Lcom/android/sprintmenu/Dataprofile_Edit;)Landroid/preference/EditTextPreference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    #getter for: Lcom/android/sprintmenu/Dataprofile_Edit;->HA_PasswordPref:Landroid/preference/EditTextPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$1100(Lcom/android/sprintmenu/Dataprofile_Edit;)Landroid/preference/EditTextPreference;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Dataprofile_Edit$1;->this$0:Lcom/android/sprintmenu/Dataprofile_Edit;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/sprintmenu/Dataprofile_Edit;->UserEditStatus:Ljava/lang/Boolean;

    goto/16 :goto_9

    .line 462
    .end local v3           #aaa_pw:Ljava/lang/String;
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v5           #ha_pw:Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #m_home_addr:Ljava/lang/String;
    .end local v8           #offset:I
    .end local v10           #pev_tunnel_value:I
    .end local v11           #prim_home_addr:Ljava/lang/String;
    .end local v12           #sec_home_agent:Ljava/lang/String;
    .end local v13           #spi_mn_aaa:Ljava/lang/String;
    .end local v14           #spi_mn_ha:Ljava/lang/String;
    .end local v15           #temp:[B
    .end local v16           #user_name:Ljava/lang/String;
    :pswitch_6bc
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    const-string v18, "SET response incoming!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 465
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 468
    invoke-static {}, Lcom/android/sprintmenu/Dataprofile_Edit;->access$000()Ljava/lang/String;

    move-result-object v17

    const-string v18, "AsyncResult Exception Occur!!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 304
    :pswitch_data_6dc
    .packed-switch 0xe
        :pswitch_a
        :pswitch_6bc
    .end packed-switch
.end method
