.class public Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;
.super Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;
.source "MXSingleSelector.java"


# instance fields
.field mMaxSize:J

.field mSelectedPath:Ljava/lang/String;

.field mSelectedView:Landroid/widget/CompoundButton;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;-><init>()V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mMaxSize:J

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 75
    const-string v0, "[MyFiles]"

    const-string v1, "MXSingleSelector:clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mSelectedView:Landroid/widget/CompoundButton;

    .line 78
    iput-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mSelectedPath:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mChangedListner:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;

    if-eqz v0, :cond_19

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mChangedListner:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;->onSelecterChanged(I)V

    .line 82
    :cond_19
    return-void
.end method

.method public declared-synchronized getCount()I
    .registers 2

    .prologue
    .line 155
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mSelectedPath:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    .line 156
    const/4 v0, 0x0

    .line 158
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_6

    .line 155
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSelectedFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mSelectedPath:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected(Ljava/lang/String;)Z
    .registers 4
    .parameter "path"

    .prologue
    .line 60
    const-string v0, "[MyFiles]"

    const-string v1, "MXSingleSelector:isSelected "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mSelectedPath:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mSelectedPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 12
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const-wide/16 v7, 0x400

    const/4 v6, 0x0

    .line 27
    const-string v1, "[MyFiles]"

    const-string v2, "MXSingleSelector:onCheckedChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    if-eqz p2, :cond_44

    .line 30
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, f:Ljava/io/File;
    iget-wide v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mMaxSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mMaxSize:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_52

    .line 34
    :cond_29
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mSelectedView:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mSelectedView:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 35
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mSelectedView:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 38
    :cond_3a
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mSelectedView:Landroid/widget/CompoundButton;

    .line 39
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mSelectedPath:Ljava/lang/String;

    .line 48
    .end local v0           #f:Ljava/io/File;
    :cond_44
    :goto_44
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mChangedListner:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;

    if-eqz v1, :cond_51

    .line 50
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mSelectedPath:Ljava/lang/String;

    if-nez v1, :cond_65

    .line 51
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mChangedListner:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;

    invoke-interface {v1, v6}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;->onSelecterChanged(I)V

    .line 55
    :cond_51
    :goto_51
    return-void

    .line 41
    .restart local v0       #f:Ljava/io/File;
    :cond_52
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 43
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mSizeListener:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnOverSizeSelectedListener;

    if-eqz v1, :cond_44

    .line 44
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mSizeListener:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnOverSizeSelectedListener;

    iget-wide v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mMaxSize:J

    div-long/2addr v2, v7

    iget-wide v4, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mMaxSize:J

    div-long/2addr v4, v7

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnOverSizeSelectedListener;->onOverSizeSelected(JJ)V

    goto :goto_44

    .line 53
    .end local v0           #f:Ljava/io/File;
    :cond_65
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mChangedListner:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;->onSelecterChanged(I)V

    goto :goto_51
.end method

.method public setMaxSize(J)V
    .registers 6
    .parameter "kilobyte"

    .prologue
    .line 87
    const-string v0, "[MyFiles]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MXSingleSelector:setMaxSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-wide/16 v0, 0x400

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mMaxSize:J

    .line 89
    return-void
.end method

.method public setSelected(Ljava/io/File;)V
    .registers 9
    .parameter "file"

    .prologue
    const-wide/16 v5, 0x400

    .line 122
    const-string v0, "[MyFiles]"

    const-string v1, "MXSingleSelector:setSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mSelectedPath:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mSelectedPath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 126
    :cond_19
    iget-wide v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mMaxSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mMaxSize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_35

    .line 127
    :cond_2b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mSelectedView:Landroid/widget/CompoundButton;

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mSelectedPath:Ljava/lang/String;

    .line 134
    :cond_34
    :goto_34
    return-void

    .line 130
    :cond_35
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mSizeListener:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnOverSizeSelectedListener;

    if-eqz v0, :cond_34

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mSizeListener:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnOverSizeSelectedListener;

    iget-wide v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mMaxSize:J

    div-long/2addr v1, v5

    iget-wide v3, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->mMaxSize:J

    div-long/2addr v3, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnOverSizeSelectedListener;->onOverSizeSelected(JJ)V

    goto :goto_34
.end method
