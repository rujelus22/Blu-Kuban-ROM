.class public Lcom/android/task/TaskImportListActivity;
.super Landroid/app/Activity;
.source "TaskImportListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/task/TaskImportListActivity$VCSEventAdapter;
    }
.end annotation


# instance fields
.field private mContentValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/lang/String;

.field private mVCalManager:Lcom/android/task/vcal/VCalManager;

.field private mVcalList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/task/TaskImportListActivity;->mVcalList:Landroid/widget/ListView;

    .line 42
    iput-object v0, p0, Lcom/android/task/TaskImportListActivity;->mData:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/android/task/TaskImportListActivity;->mVCalManager:Lcom/android/task/vcal/VCalManager;

    .line 45
    iput-object v0, p0, Lcom/android/task/TaskImportListActivity;->mContentValues:Ljava/util/ArrayList;

    .line 218
    return-void
.end method

.method static synthetic access$000(Lcom/android/task/TaskImportListActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/task/TaskImportListActivity;->mContentValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/task/TaskImportListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/task/TaskImportListActivity;->importCalendar()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/task/TaskImportListActivity;)Lcom/android/task/vcal/VCalManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/task/TaskImportListActivity;->mVCalManager:Lcom/android/task/vcal/VCalManager;

    return-object v0
.end method

.method private getData()V
    .registers 21

    .prologue
    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/android/task/TaskImportListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 140
    .local v10, intent:Landroid/content/Intent;
    const-string v17, "ics"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/task/TaskImportListActivity;->mData:Ljava/lang/String;

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskImportListActivity;->mData:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_6f

    .line 142
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 143
    .local v6, content:Landroid/net/Uri;
    if-nez v6, :cond_2e

    .line 144
    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 145
    .local v8, extra:Landroid/os/Bundle;
    const-string v17, "android.intent.extra.STREAM"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #content:Landroid/net/Uri;
    check-cast v6, Landroid/net/Uri;

    .line 148
    .end local v8           #extra:Landroid/os/Bundle;
    .restart local v6       #content:Landroid/net/Uri;
    :cond_2e
    if-eqz v6, :cond_6f

    .line 149
    const/4 v13, 0x0

    .line 151
    .local v13, is:Ljava/io/InputStream;
    :try_start_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/task/TaskImportListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13

    .line 152
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 154
    .local v3, baos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v13}, Ljava/io/InputStream;->available()I

    move-result v14

    .line 155
    .local v14, length:I
    if-lez v14, :cond_6a

    .line 156
    new-array v4, v14, [B

    .line 157
    .local v4, buf:[B
    const/4 v5, -0x1

    .line 158
    .local v5, bytesRead:I
    const/4 v15, 0x0

    .line 159
    .local v15, pos:I
    :goto_4a
    invoke-virtual {v13, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_59

    .line 160
    invoke-virtual {v3, v4, v15, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 161
    add-int/2addr v15, v5

    goto :goto_4a

    .line 163
    :cond_59
    new-instance v17, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    const-string v19, "UTF-8"

    invoke-direct/range {v17 .. v19}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/task/TaskImportListActivity;->mData:Ljava/lang/String;
    :try_end_6a
    .catchall {:try_start_31 .. :try_end_6a} :catchall_bd
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_6a} :catch_8d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_31 .. :try_end_6a} :catch_99
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_6a} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_6a} :catch_b1

    .line 177
    .end local v4           #buf:[B
    .end local v5           #bytesRead:I
    .end local v15           #pos:I
    :cond_6a
    if-eqz v13, :cond_6f

    .line 179
    :try_start_6c
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_e7

    .line 188
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #content:Landroid/net/Uri;
    .end local v13           #is:Ljava/io/InputStream;
    .end local v14           #length:I
    :cond_6f
    :goto_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskImportListActivity;->mData:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_c4

    .line 189
    const v17, 0x7f0a002f

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/task/TaskImportListActivity;->finish()V

    .line 200
    :cond_8c
    :goto_8c
    return-void

    .line 165
    .restart local v6       #content:Landroid/net/Uri;
    .restart local v13       #is:Ljava/io/InputStream;
    :catch_8d
    move-exception v9

    .line 167
    .local v9, fnfe:Ljava/io/FileNotFoundException;
    :try_start_8e
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_bd

    .line 177
    if-eqz v13, :cond_6f

    .line 179
    :try_start_93
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_6f

    .line 180
    :catch_97
    move-exception v17

    goto :goto_6f

    .line 168
    .end local v9           #fnfe:Ljava/io/FileNotFoundException;
    :catch_99
    move-exception v12

    .line 170
    .local v12, ioobe:Ljava/lang/IndexOutOfBoundsException;
    :try_start_9a
    invoke-virtual {v12}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_bd

    .line 177
    if-eqz v13, :cond_6f

    .line 179
    :try_start_9f
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3

    goto :goto_6f

    .line 180
    :catch_a3
    move-exception v17

    goto :goto_6f

    .line 171
    .end local v12           #ioobe:Ljava/lang/IndexOutOfBoundsException;
    :catch_a5
    move-exception v11

    .line 172
    .local v11, ioe:Ljava/io/IOException;
    :try_start_a6
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_bd

    .line 177
    if-eqz v13, :cond_6f

    .line 179
    :try_start_ab
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    goto :goto_6f

    .line 180
    :catch_af
    move-exception v17

    goto :goto_6f

    .line 174
    .end local v11           #ioe:Ljava/io/IOException;
    :catch_b1
    move-exception v7

    .line 175
    .local v7, e:Ljava/lang/Exception;
    :try_start_b2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_bd

    .line 177
    if-eqz v13, :cond_6f

    .line 179
    :try_start_b7
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_6f

    .line 180
    :catch_bb
    move-exception v17

    goto :goto_6f

    .line 177
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_bd
    move-exception v17

    if-eqz v13, :cond_c3

    .line 179
    :try_start_c0
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_e9

    .line 182
    :cond_c3
    :goto_c3
    throw v17

    .line 194
    .end local v6           #content:Landroid/net/Uri;
    .end local v13           #is:Ljava/io/InputStream;
    :cond_c4
    new-instance v17, Lcom/android/task/vcal/VCalManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/task/vcal/VCalManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/task/TaskImportListActivity;->mVCalManager:Lcom/android/task/vcal/VCalManager;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/task/TaskImportListActivity;->mData:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/task/TaskImportListActivity;->parseVCalendar(Ljava/lang/String;)Z

    move-result v16

    .line 196
    .local v16, valid:Z
    if-nez v16, :cond_8c

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/task/TaskImportListActivity;->finish()V

    goto :goto_8c

    .line 180
    .end local v16           #valid:Z
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #content:Landroid/net/Uri;
    .restart local v13       #is:Ljava/io/InputStream;
    .restart local v14       #length:I
    :catch_e7
    move-exception v17

    goto :goto_6f

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v14           #length:I
    :catch_e9
    move-exception v18

    goto :goto_c3
.end method

.method private importCalendar()V
    .registers 4

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/task/TaskImportListActivity;->mVCalManager:Lcom/android/task/vcal/VCalManager;

    invoke-virtual {v1}, Lcom/android/task/vcal/VCalManager;->save()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 211
    invoke-virtual {p0}, Lcom/android/task/TaskImportListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, importString:Ljava/lang/String;
    :goto_13
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 216
    return-void

    .line 213
    .end local v0           #importString:Ljava/lang/String;
    :cond_1c
    invoke-virtual {p0}, Lcom/android/task/TaskImportListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #importString:Ljava/lang/String;
    goto :goto_13
.end method

.method private parseVCalendar(Ljava/lang/String;)Z
    .registers 3
    .parameter "data"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/task/TaskImportListActivity;->mVCalManager:Lcom/android/task/vcal/VCalManager;

    invoke-virtual {v0, p1}, Lcom/android/task/vcal/VCalManager;->parseVCalendar(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskImportListActivity;->mContentValues:Ljava/util/ArrayList;

    .line 205
    iget-object v0, p0, Lcom/android/task/TaskImportListActivity;->mContentValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private setupLayout()V
    .registers 4

    .prologue
    .line 97
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/android/task/TaskImportListActivity;->setContentView(I)V

    .line 99
    const v0, 0x7f0c0035

    invoke-virtual {p0, v0}, Lcom/android/task/TaskImportListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/task/TaskImportListActivity;->mVcalList:Landroid/widget/ListView;

    .line 100
    iget-object v0, p0, Lcom/android/task/TaskImportListActivity;->mVcalList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/task/TaskImportListActivity;->mVcalList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/task/TaskImportListActivity;->mVcalList:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/task/TaskImportListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 103
    iget-object v0, p0, Lcom/android/task/TaskImportListActivity;->mVcalList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/task/TaskImportListActivity$VCSEventAdapter;-><init>(Lcom/android/task/TaskImportListActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    iget-object v0, p0, Lcom/android/task/TaskImportListActivity;->mVcalList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/task/TaskImportListActivity$1;

    invoke-direct {v1, p0}, Lcom/android/task/TaskImportListActivity$1;-><init>(Lcom/android/task/TaskImportListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    invoke-direct {p0}, Lcom/android/task/TaskImportListActivity;->setupSoftkey()V

    .line 117
    return-void
.end method

.method private setupSoftkey()V
    .registers 4

    .prologue
    .line 120
    const v2, 0x7f0c0004

    invoke-virtual {p0, v2}, Lcom/android/task/TaskImportListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 121
    .local v1, importButton:Landroid/widget/Button;
    const v2, 0x7f0a002e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 122
    new-instance v2, Lcom/android/task/TaskImportListActivity$2;

    invoke-direct {v2, p0}, Lcom/android/task/TaskImportListActivity$2;-><init>(Lcom/android/task/TaskImportListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v2, 0x7f0c0005

    invoke-virtual {p0, v2}, Lcom/android/task/TaskImportListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 130
    .local v0, cancelButton:Landroid/widget/Button;
    const v2, 0x7f0a0011

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 131
    new-instance v2, Lcom/android/task/TaskImportListActivity$3;

    invoke-direct {v2, p0}, Lcom/android/task/TaskImportListActivity$3;-><init>(Lcom/android/task/TaskImportListActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 77
    const/16 v0, 0x64

    if-ne p1, v0, :cond_a

    .line 78
    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    .line 79
    invoke-virtual {p0}, Lcom/android/task/TaskImportListActivity;->finish()V

    .line 82
    :cond_a
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 85
    const-string v0, "TaskImportListActivity"

    const-string v1, "======== configurationChanged ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 88
    iget-object v0, p0, Lcom/android/task/TaskImportListActivity;->mVcalList:Landroid/widget/ListView;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 93
    :goto_14
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 94
    return-void

    .line 90
    :cond_18
    iget-object v0, p0, Lcom/android/task/TaskImportListActivity;->mVcalList:Landroid/widget/ListView;

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    goto :goto_14
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 50
    const-string v0, "TaskImportListActivity"

    const-string v1, "======== onCreate ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-direct {p0}, Lcom/android/task/TaskImportListActivity;->getData()V

    .line 55
    invoke-direct {p0}, Lcom/android/task/TaskImportListActivity;->setupLayout()V

    .line 56
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 60
    const-string v0, "TaskImportListActivity"

    const-string v1, "======== onDestroy ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 62
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 72
    const-string v0, "TaskImportListActivity"

    const-string v1, "======== onPause ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 74
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 66
    const-string v0, "TaskImportListActivity"

    const-string v1, "======== onResume ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 68
    return-void
.end method
