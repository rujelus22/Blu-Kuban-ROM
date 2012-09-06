.class final Landroid/support/v4/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .line 154
    new-instance v0, Landroid/support/v4/app/e;

    invoke-direct {v0}, Landroid/support/v4/app/e;-><init>()V

    sput-object v0, Landroid/support/v4/app/d;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Landroid/support/v4/app/d;->a:[I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/d;->b:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/d;->c:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/d;->d:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/d;->e:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/d;->f:I

    .line 89
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/d;->g:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/d;->h:I

    .line 91
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/d;->i:Ljava/lang/CharSequence;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/m;Landroid/support/v4/app/b;)V
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

    iput-object v0, p0, Landroid/support/v4/app/d;->a:[I

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
    if-eqz v5, :cond_9f

    .line 55
    iget-object v1, p0, Landroid/support/v4/app/d;->a:[I

    add-int/lit8 v2, v0, 0x1

    iget v4, v5, Landroid/support/v4/app/c;->c:I

    aput v4, v1, v0

    .line 56
    iget-object v1, p0, Landroid/support/v4/app/d;->a:[I

    add-int/lit8 v4, v2, 0x1

    iget-object v0, v5, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    if-eqz v0, :cond_91

    iget-object v0, v5, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    iget v0, v0, Landroid/support/v4/app/f;->f:I

    :goto_47
    aput v0, v1, v2

    .line 57
    iget-object v0, p0, Landroid/support/v4/app/d;->a:[I

    add-int/lit8 v1, v4, 0x1

    iget v2, v5, Landroid/support/v4/app/c;->e:I

    aput v2, v0, v4

    .line 58
    iget-object v0, p0, Landroid/support/v4/app/d;->a:[I

    add-int/lit8 v2, v1, 0x1

    iget v4, v5, Landroid/support/v4/app/c;->f:I

    aput v4, v0, v1

    .line 59
    iget-object v0, p0, Landroid/support/v4/app/d;->a:[I

    add-int/lit8 v1, v2, 0x1

    iget v4, v5, Landroid/support/v4/app/c;->g:I

    aput v4, v0, v2

    .line 60
    iget-object v0, p0, Landroid/support/v4/app/d;->a:[I

    add-int/lit8 v2, v1, 0x1

    iget v4, v5, Landroid/support/v4/app/c;->h:I

    aput v4, v0, v1

    .line 61
    iget-object v0, v5, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_98

    .line 62
    iget-object v0, v5, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 63
    iget-object v0, p0, Landroid/support/v4/app/d;->a:[I

    add-int/lit8 v1, v2, 0x1

    aput v6, v0, v2

    move v2, v3

    .line 64
    :goto_7a
    if-ge v2, v6, :cond_93

    .line 65
    iget-object v7, p0, Landroid/support/v4/app/d;->a:[I

    add-int/lit8 v4, v1, 0x1

    iget-object v0, v5, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/f;

    iget v0, v0, Landroid/support/v4/app/f;->f:I

    aput v0, v7, v1

    .line 64
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v1, v4

    goto :goto_7a

    .line 56
    :cond_91
    const/4 v0, -0x1

    goto :goto_47

    :cond_93
    move v0, v1

    .line 70
    :goto_94
    iget-object v1, v5, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;

    move-object v5, v1

    goto :goto_31

    .line 68
    :cond_98
    iget-object v1, p0, Landroid/support/v4/app/d;->a:[I

    add-int/lit8 v0, v2, 0x1

    aput v3, v1, v2

    goto :goto_94

    .line 72
    :cond_9f
    iget v0, p2, Landroid/support/v4/app/b;->i:I

    iput v0, p0, Landroid/support/v4/app/d;->b:I

    .line 73
    iget v0, p2, Landroid/support/v4/app/b;->j:I

    iput v0, p0, Landroid/support/v4/app/d;->c:I

    .line 74
    iget-object v0, p2, Landroid/support/v4/app/b;->m:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/d;->d:Ljava/lang/String;

    .line 75
    iget v0, p2, Landroid/support/v4/app/b;->o:I

    iput v0, p0, Landroid/support/v4/app/d;->e:I

    .line 76
    iget v0, p2, Landroid/support/v4/app/b;->p:I

    iput v0, p0, Landroid/support/v4/app/d;->f:I

    .line 77
    iget-object v0, p2, Landroid/support/v4/app/b;->q:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/d;->g:Ljava/lang/CharSequence;

    .line 78
    iget v0, p2, Landroid/support/v4/app/b;->r:I

    iput v0, p0, Landroid/support/v4/app/d;->h:I

    .line 79
    iget-object v0, p2, Landroid/support/v4/app/b;->s:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/d;->i:Ljava/lang/CharSequence;

    .line 80
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/m;)Landroid/support/v4/app/b;
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 95
    new-instance v4, Landroid/support/v4/app/b;

    invoke-direct {v4, p1}, Landroid/support/v4/app/b;-><init>(Landroid/support/v4/app/m;)V

    move v0, v1

    .line 97
    :goto_8
    iget-object v2, p0, Landroid/support/v4/app/d;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_d3

    .line 98
    new-instance v5, Landroid/support/v4/app/c;

    invoke-direct {v5}, Landroid/support/v4/app/c;-><init>()V

    .line 99
    iget-object v2, p0, Landroid/support/v4/app/d;->a:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    iput v0, v5, Landroid/support/v4/app/c;->c:I

    .line 100
    sget-boolean v0, Landroid/support/v4/app/m;->a:Z

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

    iget-object v6, p0, Landroid/support/v4/app/d;->a:[I

    aget v6, v6, v3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_44
    iget-object v0, p0, Landroid/support/v4/app/d;->a:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v0, v3

    .line 103
    if-ltz v0, :cond_ca

    .line 104
    iget-object v3, p1, Landroid/support/v4/app/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/f;

    .line 105
    iput-object v0, v5, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    .line 109
    :goto_56
    iget-object v0, p0, Landroid/support/v4/app/d;->a:[I

    add-int/lit8 v3, v2, 0x1

    aget v0, v0, v2

    iput v0, v5, Landroid/support/v4/app/c;->e:I

    .line 110
    iget-object v0, p0, Landroid/support/v4/app/d;->a:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v0, v3

    iput v0, v5, Landroid/support/v4/app/c;->f:I

    .line 111
    iget-object v0, p0, Landroid/support/v4/app/d;->a:[I

    add-int/lit8 v3, v2, 0x1

    aget v0, v0, v2

    iput v0, v5, Landroid/support/v4/app/c;->g:I

    .line 112
    iget-object v0, p0, Landroid/support/v4/app/d;->a:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v0, v3

    iput v0, v5, Landroid/support/v4/app/c;->h:I

    .line 113
    iget-object v3, p0, Landroid/support/v4/app/d;->a:[I

    add-int/lit8 v0, v2, 0x1

    aget v6, v3, v2

    .line 114
    if-lez v6, :cond_ce

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v5, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    move v2, v1

    .line 116
    :goto_86
    if-ge v2, v6, :cond_ce

    .line 117
    sget-boolean v3, Landroid/support/v4/app/m;->a:Z

    if-eqz v3, :cond_b2

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

    iget-object v8, p0, Landroid/support/v4/app/d;->a:[I

    aget v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_b2
    iget-object v7, p1, Landroid/support/v4/app/m;->f:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/support/v4/app/d;->a:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v8, v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/f;

    .line 120
    iget-object v7, v5, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_86

    .line 107
    :cond_ca
    const/4 v0, 0x0

    iput-object v0, v5, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    goto :goto_56

    .line 123
    :cond_ce
    invoke-virtual {v4, v5}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/c;)V

    goto/16 :goto_8

    .line 125
    :cond_d3
    iget v0, p0, Landroid/support/v4/app/d;->b:I

    iput v0, v4, Landroid/support/v4/app/b;->i:I

    .line 126
    iget v0, p0, Landroid/support/v4/app/d;->c:I

    iput v0, v4, Landroid/support/v4/app/b;->j:I

    .line 127
    iget-object v0, p0, Landroid/support/v4/app/d;->d:Ljava/lang/String;

    iput-object v0, v4, Landroid/support/v4/app/b;->m:Ljava/lang/String;

    .line 128
    iget v0, p0, Landroid/support/v4/app/d;->e:I

    iput v0, v4, Landroid/support/v4/app/b;->o:I

    .line 129
    iput-boolean v9, v4, Landroid/support/v4/app/b;->k:Z

    .line 130
    iget v0, p0, Landroid/support/v4/app/d;->f:I

    iput v0, v4, Landroid/support/v4/app/b;->p:I

    .line 131
    iget-object v0, p0, Landroid/support/v4/app/d;->g:Ljava/lang/CharSequence;

    iput-object v0, v4, Landroid/support/v4/app/b;->q:Ljava/lang/CharSequence;

    .line 132
    iget v0, p0, Landroid/support/v4/app/d;->h:I

    iput v0, v4, Landroid/support/v4/app/b;->r:I

    .line 133
    iget-object v0, p0, Landroid/support/v4/app/d;->i:Ljava/lang/CharSequence;

    iput-object v0, v4, Landroid/support/v4/app/b;->s:Ljava/lang/CharSequence;

    .line 134
    invoke-virtual {v4, v9}, Landroid/support/v4/app/b;->a(I)V

    .line 135
    return-object v4
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Landroid/support/v4/app/d;->a:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 144
    iget v0, p0, Landroid/support/v4/app/d;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Landroid/support/v4/app/d;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v0, p0, Landroid/support/v4/app/d;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget v0, p0, Landroid/support/v4/app/d;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Landroid/support/v4/app/d;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v0, p0, Landroid/support/v4/app/d;->g:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 150
    iget v0, p0, Landroid/support/v4/app/d;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Landroid/support/v4/app/d;->i:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 152
    return-void
.end method
