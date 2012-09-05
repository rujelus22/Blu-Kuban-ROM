.class public Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
.super Ljava/lang/Object;
.source "ListItem.java"


# instance fields
.field private _id:I

.field private bottomLabel:Ljava/lang/String;

.field private isChecked:Z

.field private mIsDst:I

.field private mLatitude:F

.field private mLongitude:F

.field private mRawoffset:I

.field private mTimeZoneID:Ljava/lang/String;

.field private mUniqueID:I

.field private nationalFlag:I

.field private topLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter "_id"
    .parameter "topLabel"

    .prologue
    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->_id:I

    .line 115
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->topLabel:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "_id"
    .parameter "topLabel"
    .parameter "timeZoneID"
    .parameter "isDst"

    .prologue
    .line 119
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->_id:I

    .line 123
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->topLabel:Ljava/lang/String;

    .line 125
    iput-object p3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->mTimeZoneID:Ljava/lang/String;

    .line 127
    iput p4, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->mIsDst:I

    .line 129
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIFF)V
    .registers 8
    .parameter "_id"
    .parameter "topLabel"
    .parameter "timeZoneID"
    .parameter "isDst"
    .parameter "uniqueID"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->_id:I

    .line 150
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->topLabel:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->mTimeZoneID:Ljava/lang/String;

    .line 154
    iput p4, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->mIsDst:I

    .line 156
    iput p5, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->mUniqueID:I

    .line 158
    iput p6, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->mLatitude:F

    .line 160
    iput p7, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->mLongitude:F

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "topLabel"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->topLabel:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "topLabel"
    .parameter "bottomLabel"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->topLabel:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->bottomLabel:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter "topLabel"
    .parameter "bottomLabel"
    .parameter "rawoffset"

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->topLabel:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->bottomLabel:Ljava/lang/String;

    .line 96
    iput p3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->mRawoffset:I

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .parameter "topLabel"
    .parameter "bottomLabel"
    .parameter "rawoffset"
    .parameter "nationalFlag"

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->topLabel:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->bottomLabel:Ljava/lang/String;

    .line 106
    iput p3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->mRawoffset:I

    .line 108
    iput p4, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->nationalFlag:I

    .line 110
    return-void
.end method


# virtual methods
.method public getBottomLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->bottomLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getDST()I
    .registers 2

    .prologue
    .line 210
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->mIsDst:I

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 198
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->_id:I

    return v0
.end method

.method public getLatitude()F
    .registers 2

    .prologue
    .line 222
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->mLatitude:F

    return v0
.end method

.method public getLongitude()F
    .registers 2

    .prologue
    .line 228
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->mLongitude:F

    return v0
.end method

.method public getRawoffset()I
    .registers 2

    .prologue
    .line 246
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->mRawoffset:I

    return v0
.end method

.method public getSelected()Z
    .registers 2

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->isChecked:Z

    return v0
.end method

.method public getTimeZoneID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->mTimeZoneID:Ljava/lang/String;

    return-object v0
.end method

.method public getTopLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->topLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getUniaueID()I
    .registers 2

    .prologue
    .line 216
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->mUniqueID:I

    return v0
.end method

.method public setDST(I)V
    .registers 2
    .parameter "isDst"

    .prologue
    .line 260
    iput p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->mIsDst:I

    .line 262
    return-void
.end method

.method public setSelected(Z)V
    .registers 2
    .parameter "select"

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->isChecked:Z

    .line 256
    return-void
.end method
