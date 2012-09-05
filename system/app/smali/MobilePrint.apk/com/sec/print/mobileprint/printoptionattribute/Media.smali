.class public Lcom/sec/print/mobileprint/printoptionattribute/Media;
.super Ljava/lang/Object;
.source "Media.java"

# interfaces
.implements Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/printoptionattribute/Media;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private height:I

.field private marginBottom:I

.field private marginLeft:I

.field private marginRight:I

.field private marginTop:I

.field private mediaSizeName:Ljava/lang/String;

.field private mediaTypeName:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 261
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/Media$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/printoptionattribute/Media$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 140
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/Media;->readFromParcel(Landroid/os/Parcel;)V

    .line 142
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/print/mobileprint/printoptionattribute/Media$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/Media;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 6
    .parameter "mediaSizeName"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v1, 0x32

    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->mediaSizeName:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->mediaTypeName:Ljava/lang/String;

    .line 73
    iput p2, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->width:I

    .line 74
    iput p3, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->height:I

    .line 76
    iput v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginLeft:I

    .line 77
    iput v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginTop:I

    .line 78
    iput v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginRight:I

    .line 79
    iput v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginBottom:I

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 6
    .parameter "mediaSizeName"
    .parameter "width"
    .parameter "height"
    .parameter "mediaTypeName"

    .prologue
    const/16 v0, 0x32

    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->mediaSizeName:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->mediaTypeName:Ljava/lang/String;

    .line 100
    iput p2, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->width:I

    .line 101
    iput p3, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->height:I

    .line 103
    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginLeft:I

    .line 104
    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginTop:I

    .line 105
    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginRight:I

    .line 106
    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginBottom:I

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;IIII)V
    .registers 9
    .parameter "mediaSizeName"
    .parameter "width"
    .parameter "height"
    .parameter "mediaTypeName"
    .parameter "marginLeft"
    .parameter "marginTop"
    .parameter "marginRight"
    .parameter "marginBottom"

    .prologue
    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->mediaSizeName:Ljava/lang/String;

    .line 128
    iput-object p4, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->mediaTypeName:Ljava/lang/String;

    .line 130
    iput p2, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->width:I

    .line 131
    iput p3, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->height:I

    .line 133
    iput p5, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginLeft:I

    .line 134
    iput p6, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginTop:I

    .line 135
    iput p7, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginRight:I

    .line 136
    iput p8, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginBottom:I

    .line 137
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 165
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->height:I

    return v0
.end method

.method public getMarginBottom()I
    .registers 2

    .prologue
    .line 197
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginBottom:I

    return v0
.end method

.method public getMarginLeft()I
    .registers 2

    .prologue
    .line 173
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginLeft:I

    return v0
.end method

.method public getMarginRight()I
    .registers 2

    .prologue
    .line 189
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginRight:I

    return v0
.end method

.method public getMarginTop()I
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginTop:I

    return v0
.end method

.method public getMediaSizeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->mediaSizeName:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaTypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->mediaTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->width:I

    return v0
.end method

.method public isRequireCrop()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 146
    iget-object v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->mediaSizeName:Ljava/lang/String;

    const-string v2, "3.5x5in"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, v0, :cond_1f

    iget-object v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->mediaSizeName:Ljava/lang/String;

    const-string v2, "4x6in"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, v0, :cond_1f

    iget-object v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->mediaSizeName:Ljava/lang/String;

    const-string v2, "5x7in"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_20

    .line 153
    :cond_1f
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->mediaSizeName:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->mediaTypeName:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->width:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->height:I

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginLeft:I

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginTop:I

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginRight:I

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginBottom:I

    .line 259
    return-void
.end method

.method public setHeight(I)V
    .registers 2
    .parameter "height"

    .prologue
    .line 169
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->height:I

    .line 170
    return-void
.end method

.method public setMarginBottom(I)V
    .registers 2
    .parameter "marginBottom"

    .prologue
    .line 201
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginBottom:I

    .line 202
    return-void
.end method

.method public setMarginLeft(I)V
    .registers 2
    .parameter "marginLeft"

    .prologue
    .line 177
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginLeft:I

    .line 178
    return-void
.end method

.method public setMarginRight(I)V
    .registers 2
    .parameter "marginRight"

    .prologue
    .line 193
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginRight:I

    .line 194
    return-void
.end method

.method public setMarginTop(I)V
    .registers 2
    .parameter "marginTop"

    .prologue
    .line 185
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginTop:I

    .line 186
    return-void
.end method

.method public setMediaSizeName(Ljava/lang/String;)V
    .registers 2
    .parameter "mediaSizeName"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->mediaSizeName:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setMediaTypeName(Ljava/lang/String;)V
    .registers 2
    .parameter "mediaTypeName"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->mediaTypeName:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .parameter "width"

    .prologue
    .line 161
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->width:I

    .line 162
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->mediaSizeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->mediaTypeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/Media;->marginBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    return-void
.end method
