.class public final Lcom/google/android/gtalkservice/Presence;
.super Ljava/lang/Object;
.source "Presence.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gtalkservice/Presence;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/google/android/gtalkservice/Presence;


# instance fields
.field private a:I

.field private a:LacL;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:I

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/gtalkservice/Presence;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/Presence;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/Presence;->a:Lcom/google/android/gtalkservice/Presence;

    .line 504
    new-instance v0, LacK;

    invoke-direct {v0}, LacK;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/Presence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 64
    const/4 v0, 0x0

    sget-object v1, LacL;->a:LacL;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gtalkservice/Presence;-><init>(ZLacL;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->a(I)V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->b(I)V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->c(I)V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_65

    move v0, v1

    :goto_21
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->a(Z)V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_67

    move v0, v1

    :goto_2b
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->b(Z)V

    .line 95
    const-class v0, LacL;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LacL;

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->a(LacL;)V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->a:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_69

    :goto_49
    invoke-virtual {p0, v1}, Lcom/google/android/gtalkservice/Presence;->a(Z)Z

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->a:Ljava/util/List;

    .line 102
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->b:Ljava/util/List;

    .line 105
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 106
    return-void

    :cond_65
    move v0, v2

    .line 92
    goto :goto_21

    :cond_67
    move v0, v2

    .line 94
    goto :goto_2b

    :cond_69
    move v1, v2

    .line 99
    goto :goto_49
.end method

.method public constructor <init>(ZLacL;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->a:Z

    .line 76
    iput-object p2, p0, Lcom/google/android/gtalkservice/Presence;->a:LacL;

    .line 77
    iput-object p3, p0, Lcom/google/android/gtalkservice/Presence;->a:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->b:Z

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->a:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->b:Ljava/util/List;

    .line 81
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->a:I

    .line 147
    return-void
.end method

.method public a(LacL;)V
    .registers 2
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/google/android/gtalkservice/Presence;->a:LacL;

    .line 278
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->c:Z

    .line 209
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->c:Z

    return v0
.end method

.method public a(Z)Z
    .registers 3
    .parameter

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->b:Z

    .line 251
    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->a()Z

    move-result v0

    if-nez v0, :cond_c

    .line 252
    const/4 v0, 0x0

    .line 255
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public b()I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->b:I

    return v0
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 166
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->b:I

    .line 167
    return-void
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->a:Z

    .line 229
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->a:Z

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->c:I

    return v0
.end method

.method public c(I)V
    .registers 2
    .parameter

    .prologue
    .line 186
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->c:I

    .line 187
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->b:Z

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->b()Z

    move-result v0

    if-nez v0, :cond_9

    .line 518
    const-string v0, "UNAVAILABLE"

    .line 533
    :goto_8
    return-object v0

    .line 521
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 522
    const-string v0, "INVISIBLE"

    goto :goto_8

    .line 527
    :cond_12
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->a:LacL;

    sget-object v1, LacL;->a:LacL;

    if-ne v0, v1, :cond_1b

    .line 528
    const-string v0, "AVAILABLE(x)"

    goto :goto_8

    .line 530
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->a:LacL;

    invoke-virtual {v0}, LacL;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 486
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->a()Z

    move-result v0

    if-eqz v0, :cond_49

    move v0, v1

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->a:Z

    if-eqz v0, :cond_4b

    move v0, v1

    :goto_26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->a:LacL;

    invoke-virtual {v0}, LacL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 494
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->b:Z

    if-eqz v0, :cond_4d

    :goto_3b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 497
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 498
    return-void

    :cond_49
    move v0, v2

    .line 489
    goto :goto_1e

    :cond_4b
    move v0, v2

    .line 491
    goto :goto_26

    :cond_4d
    move v1, v2

    .line 494
    goto :goto_3b
.end method
