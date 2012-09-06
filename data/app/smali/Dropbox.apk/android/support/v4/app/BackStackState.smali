.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:[I

.field final b:I

.field final c:I

.field final d:Ljava/lang/String;

.field final e:I

.field final f:I

.field final g:Ljava/lang/CharSequence;

.field final h:I

.field final i:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 149
    new-instance v0, Landroid/support/v4/app/d;

    invoke-direct {v0}, Landroid/support/v4/app/d;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    .line 89
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    .line 91
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/l;Landroid/support/v4/app/b;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-object v0, p2, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/c;

    move-object v1, v0

    move v0, v3

    .line 42
    :goto_8
    if-eqz v1, :cond_18

    .line 43
    iget-object v2, v1, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    if-eqz v2, :cond_15

    iget-object v2, v1, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 44
    :cond_15
    iget-object v1, v1, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;

    goto :goto_8

    .line 46
    :cond_18
    iget v1, p2, Landroid/support/v4/app/b;->d:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    .line 48
    iget-boolean v0, p2, Landroid/support/v4/app/b;->k:Z

    if-nez v0, :cond_2d

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not on back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2d
    iget-object v0, p2, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/c;

    move-object v5, v0

    move v0, v3

    .line 54
    :goto_31
    if-eqz v5, :cond_99

    .line 55
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v0, 0x1

    iget v4, v5, Landroid/support/v4/app/c;->c:I

    aput v4, v1, v0

    .line 56
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v1, v2, 0x1

    iget-object v4, v5, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    iget v4, v4, Landroid/support/v4/app/Fragment;->n:I

    aput v4, v0, v2

    .line 57
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v1, 0x1

    iget v4, v5, Landroid/support/v4/app/c;->e:I

    aput v4, v0, v1

    .line 58
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v1, v2, 0x1

    iget v4, v5, Landroid/support/v4/app/c;->f:I

    aput v4, v0, v2

    .line 59
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v1, 0x1

    iget v4, v5, Landroid/support/v4/app/c;->g:I

    aput v4, v0, v1

    .line 60
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v4, v2, 0x1

    iget v1, v5, Landroid/support/v4/app/c;->h:I

    aput v1, v0, v2

    .line 61
    iget-object v0, v5, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_92

    .line 62
    iget-object v0, v5, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 63
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v1, v4, 0x1

    aput v6, v0, v4

    move v2, v3

    .line 64
    :goto_76
    if-ge v2, v6, :cond_8d

    .line 65
    iget-object v7, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v4, v1, 0x1

    iget-object v0, v5, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->n:I

    aput v0, v7, v1

    .line 64
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v1, v4

    goto :goto_76

    :cond_8d
    move v0, v1

    .line 70
    :goto_8e
    iget-object v1, v5, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;

    move-object v5, v1

    goto :goto_31

    .line 68
    :cond_92
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v0, v4, 0x1

    aput v3, v1, v4

    goto :goto_8e

    .line 72
    :cond_99
    iget v0, p2, Landroid/support/v4/app/b;->i:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    .line 73
    iget v0, p2, Landroid/support/v4/app/b;->j:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    .line 74
    iget-object v0, p2, Landroid/support/v4/app/b;->m:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    .line 75
    iget v0, p2, Landroid/support/v4/app/b;->o:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    .line 76
    iget v0, p2, Landroid/support/v4/app/b;->p:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    .line 77
    iget-object v0, p2, Landroid/support/v4/app/b;->q:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    .line 78
    iget v0, p2, Landroid/support/v4/app/b;->r:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    .line 79
    iget-object v0, p2, Landroid/support/v4/app/b;->s:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    .line 80
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/l;)Landroid/support/v4/app/b;
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 95
    new-instance v4, Landroid/support/v4/app/b;

    invoke-direct {v4, p1}, Landroid/support/v4/app/b;-><init>(Landroid/support/v4/app/l;)V

    move v0, v1

    .line 97
    :goto_8
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_cd

    .line 98
    new-instance v5, Landroid/support/v4/app/c;

    invoke-direct {v5}, Landroid/support/v4/app/c;-><init>()V

    .line 99
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    iput v0, v5, Landroid/support/v4/app/c;->c:I

    .line 100
    sget-boolean v0, Landroid/support/v4/app/l;->a:Z

    if-eqz v0, :cond_44

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BSE "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " set base fragment #"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->a:[I

    aget v6, v6, v3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_44
    iget-object v0, p1, Landroid/support/v4/app/l;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v6, v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 103
    iput-object v0, v5, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 104
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v6, 0x1

    aget v0, v0, v6

    iput v0, v5, Landroid/support/v4/app/c;->e:I

    .line 105
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v2, 0x1

    aget v0, v0, v2

    iput v0, v5, Landroid/support/v4/app/c;->f:I

    .line 106
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v0, v3

    iput v0, v5, Landroid/support/v4/app/c;->g:I

    .line 107
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v2, 0x1

    aget v0, v0, v2

    iput v0, v5, Landroid/support/v4/app/c;->h:I

    .line 108
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v0, v3, 0x1

    aget v6, v2, v3

    .line 109
    if-lez v6, :cond_c8

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v5, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    move v2, v1

    .line 111
    :goto_84
    if-ge v2, v6, :cond_c8

    .line 112
    sget-boolean v3, Landroid/support/v4/app/l;->a:Z

    if-eqz v3, :cond_b0

    const-string v3, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BSE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " set remove fragment #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->a:[I

    aget v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_b0
    iget-object v7, p1, Landroid/support/v4/app/l;->f:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v8, v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 115
    iget-object v7, v5, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_84

    .line 118
    :cond_c8
    invoke-virtual {v4, v5}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/c;)V

    goto/16 :goto_8

    .line 120
    :cond_cd
    iget v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    iput v0, v4, Landroid/support/v4/app/b;->i:I

    .line 121
    iget v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    iput v0, v4, Landroid/support/v4/app/b;->j:I

    .line 122
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    iput-object v0, v4, Landroid/support/v4/app/b;->m:Ljava/lang/String;

    .line 123
    iget v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    iput v0, v4, Landroid/support/v4/app/b;->o:I

    .line 124
    iput-boolean v9, v4, Landroid/support/v4/app/b;->k:Z

    .line 125
    iget v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    iput v0, v4, Landroid/support/v4/app/b;->p:I

    .line 126
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    iput-object v0, v4, Landroid/support/v4/app/b;->q:Ljava/lang/CharSequence;

    .line 127
    iget v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    iput v0, v4, Landroid/support/v4/app/b;->r:I

    .line 128
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    iput-object v0, v4, Landroid/support/v4/app/b;->s:Ljava/lang/CharSequence;

    .line 129
    invoke-virtual {v4, v9}, Landroid/support/v4/app/b;->b(I)V

    .line 130
    return-object v4
.end method

.method public final describeContents()I
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 139
    iget v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 145
    iget v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 147
    return-void
.end method
