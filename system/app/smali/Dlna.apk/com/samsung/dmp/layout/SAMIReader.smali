.class public Lcom/samsung/dmp/layout/SAMIReader;
.super Ljava/lang/Object;
.source "SAMIReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;,
        Lcom/samsung/dmp/layout/SAMIReader$LineData;
    }
.end annotation


# instance fields
.field private mCurrentRecord:I

.field private mCurrentTime:I

.field private mIsJapanese:Z

.field private mMaxTime:I

.field private mMinTime:I

.field public mSAMIFileName:Ljava/lang/String;

.field private mSubtitlesData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/dmp/layout/SAMIReader$LineData;",
            ">;"
        }
    .end annotation
.end field

.field private mTextFile:Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "SAMIname"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/samsung/dmp/layout/SAMIReader;->mTextFile:Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;

    .line 25
    iput-object v1, p0, Lcom/samsung/dmp/layout/SAMIReader;->mSAMIFileName:Ljava/lang/String;

    .line 29
    iput v0, p0, Lcom/samsung/dmp/layout/SAMIReader;->mCurrentRecord:I

    .line 31
    iput v0, p0, Lcom/samsung/dmp/layout/SAMIReader;->mCurrentTime:I

    .line 33
    iput v0, p0, Lcom/samsung/dmp/layout/SAMIReader;->mMinTime:I

    iput v0, p0, Lcom/samsung/dmp/layout/SAMIReader;->mMaxTime:I

    .line 39
    iput-boolean v0, p0, Lcom/samsung/dmp/layout/SAMIReader;->mIsJapanese:Z

    .line 42
    new-instance v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;

    invoke-direct {v0, p0, p1}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;-><init>(Lcom/samsung/dmp/layout/SAMIReader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/SAMIReader;->mTextFile:Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;

    .line 44
    const-string v0, "NO_FILE"

    iput-object v0, p0, Lcom/samsung/dmp/layout/SAMIReader;->mSAMIFileName:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/samsung/dmp/layout/SAMIReader;->mTextFile:Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/samsung/dmp/layout/SAMIReader;->mTextFile:Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;

    iget v0, v0, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_34

    .line 47
    iput-object p1, p0, Lcom/samsung/dmp/layout/SAMIReader;->mSAMIFileName:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/SAMIReader;->mSubtitlesData:Ljava/util/Vector;

    .line 51
    :cond_34
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dmp/layout/SAMIReader;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/SAMIReader;->mIsJapanese:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/dmp/layout/SAMIReader;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/SAMIReader;->mIsJapanese:Z

    return p1
.end method


# virtual methods
.method public FindSubtitle(I)I
    .registers 4
    .parameter "Time"

    .prologue
    .line 102
    const/4 v0, 0x1

    .local v0, pos:I
    :goto_1
    iget-object v1, p0, Lcom/samsung/dmp/layout/SAMIReader;->mSubtitlesData:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 103
    iget-object v1, p0, Lcom/samsung/dmp/layout/SAMIReader;->mSubtitlesData:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/dmp/layout/SAMIReader$LineData;

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/SAMIReader$LineData;->GetTime()I

    move-result v1

    if-le v1, p1, :cond_1a

    .line 104
    add-int/lit8 v1, v0, -0x1

    .line 107
    :goto_19
    return v1

    .line 102
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_1d
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public GetNextSubtitle(I)Ljava/lang/String;
    .registers 6
    .parameter "Time"

    .prologue
    const/4 v3, 0x0

    .line 111
    new-instance v0, Lcom/samsung/dmp/layout/SAMIReader$LineData;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/SAMIReader$LineData;-><init>(Lcom/samsung/dmp/layout/SAMIReader;)V

    .line 112
    .local v0, SubtData:Lcom/samsung/dmp/layout/SAMIReader$LineData;
    const/4 v1, 0x0

    .line 123
    .local v1, result:Ljava/lang/String;
    iget v2, p0, Lcom/samsung/dmp/layout/SAMIReader;->mMinTime:I

    if-gt v2, p1, :cond_51

    iget v2, p0, Lcom/samsung/dmp/layout/SAMIReader;->mMaxTime:I

    if-gt p1, v2, :cond_51

    .line 125
    iget v2, p0, Lcom/samsung/dmp/layout/SAMIReader;->mCurrentTime:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_2a

    .line 128
    invoke-virtual {p0, p1}, Lcom/samsung/dmp/layout/SAMIReader;->FindSubtitle(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/dmp/layout/SAMIReader;->mCurrentRecord:I

    .line 129
    iget-object v2, p0, Lcom/samsung/dmp/layout/SAMIReader;->mSubtitlesData:Ljava/util/Vector;

    iget v3, p0, Lcom/samsung/dmp/layout/SAMIReader;->mCurrentRecord:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #SubtData:Lcom/samsung/dmp/layout/SAMIReader$LineData;
    check-cast v0, Lcom/samsung/dmp/layout/SAMIReader$LineData;

    .line 132
    .restart local v0       #SubtData:Lcom/samsung/dmp/layout/SAMIReader$LineData;
    :cond_2a
    iget-object v2, p0, Lcom/samsung/dmp/layout/SAMIReader;->mSubtitlesData:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iget v3, p0, Lcom/samsung/dmp/layout/SAMIReader;->mCurrentRecord:I

    if-le v2, v3, :cond_3e

    .line 135
    iget-object v2, p0, Lcom/samsung/dmp/layout/SAMIReader;->mSubtitlesData:Ljava/util/Vector;

    iget v3, p0, Lcom/samsung/dmp/layout/SAMIReader;->mCurrentRecord:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #SubtData:Lcom/samsung/dmp/layout/SAMIReader$LineData;
    check-cast v0, Lcom/samsung/dmp/layout/SAMIReader$LineData;

    .line 138
    .restart local v0       #SubtData:Lcom/samsung/dmp/layout/SAMIReader$LineData;
    :cond_3e
    invoke-virtual {v0}, Lcom/samsung/dmp/layout/SAMIReader$LineData;->GetTime()I

    move-result v2

    if-lt p1, v2, :cond_4e

    .line 141
    invoke-virtual {v0}, Lcom/samsung/dmp/layout/SAMIReader$LineData;->GetSubtitle()Ljava/lang/String;

    move-result-object v1

    .line 142
    iget v2, p0, Lcom/samsung/dmp/layout/SAMIReader;->mCurrentRecord:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/dmp/layout/SAMIReader;->mCurrentRecord:I

    .line 152
    :cond_4e
    :goto_4e
    iput p1, p0, Lcom/samsung/dmp/layout/SAMIReader;->mCurrentTime:I

    .line 154
    return-object v1

    .line 147
    :cond_51
    new-instance v1, Ljava/lang/String;

    .end local v1           #result:Ljava/lang/String;
    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 148
    .restart local v1       #result:Ljava/lang/String;
    iput v3, p0, Lcom/samsung/dmp/layout/SAMIReader;->mCurrentRecord:I

    .line 149
    iput v3, p0, Lcom/samsung/dmp/layout/SAMIReader;->mCurrentTime:I

    goto :goto_4e
.end method

.method public Open()Z
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    .line 54
    const/4 v3, 0x1

    .line 56
    .local v3, result:Z
    const/4 v2, 0x0

    .line 57
    .local v2, prev_Time:I
    const/4 v0, 0x0

    .line 61
    .local v0, curr_Time:I
    :goto_5
    :try_start_5
    iget-object v4, p0, Lcom/samsung/dmp/layout/SAMIReader;->mTextFile:Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;

    iget v4, v4, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    if-eq v4, v6, :cond_31

    iget-object v4, p0, Lcom/samsung/dmp/layout/SAMIReader;->mTextFile:Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;

    iget v4, v4, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    if-eq v4, v7, :cond_31

    .line 62
    iget-object v4, p0, Lcom/samsung/dmp/layout/SAMIReader;->mTextFile:Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;

    invoke-virtual {v4}, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->getNextDataFromFile()Z

    .line 63
    iget-object v4, p0, Lcom/samsung/dmp/layout/SAMIReader;->mSubtitlesData:Ljava/util/Vector;

    iget-object v5, p0, Lcom/samsung/dmp/layout/SAMIReader;->mTextFile:Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;

    iget-object v5, v5, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->SubtitleData:Lcom/samsung/dmp/layout/SAMIReader$LineData;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v4, p0, Lcom/samsung/dmp/layout/SAMIReader;->mTextFile:Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;

    iget-object v4, v4, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->SubtitleData:Lcom/samsung/dmp/layout/SAMIReader$LineData;

    invoke-virtual {v4}, Lcom/samsung/dmp/layout/SAMIReader$LineData;->GetTime()I

    move-result v0

    .line 67
    if-ge v0, v2, :cond_65

    .line 68
    iput v2, p0, Lcom/samsung/dmp/layout/SAMIReader;->mMaxTime:I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_2c

    goto :goto_5

    .line 74
    :catch_2c
    move-exception v1

    .line 75
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/samsung/dmp/layout/SAMIReader;->mTextFile:Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;

    iput v6, v4, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    .line 80
    .end local v1           #e:Ljava/lang/Exception;
    :cond_31
    iget-object v4, p0, Lcom/samsung/dmp/layout/SAMIReader;->mTextFile:Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;

    iget v4, v4, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    if-ne v4, v7, :cond_5d

    .line 82
    iget-object v4, p0, Lcom/samsung/dmp/layout/SAMIReader;->mSubtitlesData:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/dmp/layout/SAMIReader$LineData;

    invoke-virtual {v4}, Lcom/samsung/dmp/layout/SAMIReader$LineData;->GetTime()I

    move-result v4

    iput v4, p0, Lcom/samsung/dmp/layout/SAMIReader;->mMinTime:I

    .line 84
    iget v4, p0, Lcom/samsung/dmp/layout/SAMIReader;->mMinTime:I

    if-nez v4, :cond_59

    .line 85
    iget-object v4, p0, Lcom/samsung/dmp/layout/SAMIReader;->mSubtitlesData:Ljava/util/Vector;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/dmp/layout/SAMIReader$LineData;

    invoke-virtual {v4}, Lcom/samsung/dmp/layout/SAMIReader$LineData;->GetTime()I

    move-result v4

    iput v4, p0, Lcom/samsung/dmp/layout/SAMIReader;->mMinTime:I

    .line 87
    :cond_59
    iget v4, p0, Lcom/samsung/dmp/layout/SAMIReader;->mMinTime:I

    iput v4, p0, Lcom/samsung/dmp/layout/SAMIReader;->mCurrentTime:I

    .line 93
    :cond_5d
    iget-object v4, p0, Lcom/samsung/dmp/layout/SAMIReader;->mTextFile:Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;

    iget v4, v4, Lcom/samsung/dmp/layout/SAMIReader$TextFileReader;->ReaderStatus:I

    if-ne v4, v6, :cond_64

    .line 96
    const/4 v3, 0x0

    .line 98
    :cond_64
    return v3

    .line 70
    :cond_65
    move v2, v0

    .line 71
    :try_start_66
    iput v0, p0, Lcom/samsung/dmp/layout/SAMIReader;->mMaxTime:I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_68} :catch_2c

    goto :goto_5
.end method
