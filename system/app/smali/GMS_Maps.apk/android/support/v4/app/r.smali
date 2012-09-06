.class final Landroid/support/v4/app/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Z

.field final d:I

.field final e:I

.field final f:Ljava/lang/String;

.field final g:Z

.field final h:Z

.field final i:Landroid/os/Bundle;

.field j:Landroid/os/Bundle;

.field k:Landroid/support/v4/app/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 136
    new-instance v0, Landroid/support/v4/app/s;

    invoke-direct {v0}, Landroid/support/v4/app/s;-><init>()V

    sput-object v0, Landroid/support/v4/app/r;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/r;->a:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/r;->b:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4a

    move v0, v1

    :goto_18
    iput-boolean v0, p0, Landroid/support/v4/app/r;->c:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/r;->d:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/r;->e:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/r;->f:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4c

    move v0, v1

    :goto_33
    iput-boolean v0, p0, Landroid/support/v4/app/r;->g:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4e

    :goto_3b
    iput-boolean v1, p0, Landroid/support/v4/app/r;->h:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/r;->i:Landroid/os/Bundle;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/r;->j:Landroid/os/Bundle;

    .line 86
    return-void

    :cond_4a
    move v0, v2

    .line 78
    goto :goto_18

    :cond_4c
    move v0, v2

    .line 82
    goto :goto_33

    :cond_4e
    move v1, v2

    .line 83
    goto :goto_3b
.end method

.method public constructor <init>(Landroid/support/v4/app/f;)V
    .registers 3
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/r;->a:Ljava/lang/String;

    .line 65
    iget v0, p1, Landroid/support/v4/app/f;->f:I

    iput v0, p0, Landroid/support/v4/app/r;->b:I

    .line 66
    iget-boolean v0, p1, Landroid/support/v4/app/f;->o:Z

    iput-boolean v0, p0, Landroid/support/v4/app/r;->c:Z

    .line 67
    iget v0, p1, Landroid/support/v4/app/f;->u:I

    iput v0, p0, Landroid/support/v4/app/r;->d:I

    .line 68
    iget v0, p1, Landroid/support/v4/app/f;->v:I

    iput v0, p0, Landroid/support/v4/app/r;->e:I

    .line 69
    iget-object v0, p1, Landroid/support/v4/app/f;->w:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/r;->f:Ljava/lang/String;

    .line 70
    iget-boolean v0, p1, Landroid/support/v4/app/f;->z:Z

    iput-boolean v0, p0, Landroid/support/v4/app/r;->g:Z

    .line 71
    iget-boolean v0, p1, Landroid/support/v4/app/f;->y:Z

    iput-boolean v0, p0, Landroid/support/v4/app/r;->h:Z

    .line 72
    iget-object v0, p1, Landroid/support/v4/app/f;->h:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/app/r;->i:Landroid/os/Bundle;

    .line 73
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/f;
    .registers 5
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/v4/app/r;->k:Landroid/support/v4/app/f;

    if-eqz v0, :cond_7

    .line 90
    iget-object v0, p0, Landroid/support/v4/app/r;->k:Landroid/support/v4/app/f;

    .line 116
    :goto_6
    return-object v0

    .line 93
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/r;->i:Landroid/os/Bundle;

    if-eqz v0, :cond_14

    .line 94
    iget-object v0, p0, Landroid/support/v4/app/r;->i:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 97
    :cond_14
    iget-object v0, p0, Landroid/support/v4/app/r;->a:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/app/r;->i:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/f;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/f;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/r;->k:Landroid/support/v4/app/f;

    .line 99
    iget-object v0, p0, Landroid/support/v4/app/r;->j:Landroid/os/Bundle;

    if-eqz v0, :cond_31

    .line 100
    iget-object v0, p0, Landroid/support/v4/app/r;->j:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 101
    iget-object v0, p0, Landroid/support/v4/app/r;->k:Landroid/support/v4/app/f;

    iget-object v1, p0, Landroid/support/v4/app/r;->j:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/support/v4/app/f;->d:Landroid/os/Bundle;

    .line 103
    :cond_31
    iget-object v0, p0, Landroid/support/v4/app/r;->k:Landroid/support/v4/app/f;

    iget v1, p0, Landroid/support/v4/app/r;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->a(I)V

    .line 104
    iget-object v0, p0, Landroid/support/v4/app/r;->k:Landroid/support/v4/app/f;

    iget-boolean v1, p0, Landroid/support/v4/app/r;->c:Z

    iput-boolean v1, v0, Landroid/support/v4/app/f;->o:Z

    .line 105
    iget-object v0, p0, Landroid/support/v4/app/r;->k:Landroid/support/v4/app/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/app/f;->q:Z

    .line 106
    iget-object v0, p0, Landroid/support/v4/app/r;->k:Landroid/support/v4/app/f;

    iget v1, p0, Landroid/support/v4/app/r;->d:I

    iput v1, v0, Landroid/support/v4/app/f;->u:I

    .line 107
    iget-object v0, p0, Landroid/support/v4/app/r;->k:Landroid/support/v4/app/f;

    iget v1, p0, Landroid/support/v4/app/r;->e:I

    iput v1, v0, Landroid/support/v4/app/f;->v:I

    .line 108
    iget-object v0, p0, Landroid/support/v4/app/r;->k:Landroid/support/v4/app/f;

    iget-object v1, p0, Landroid/support/v4/app/r;->f:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v4/app/f;->w:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Landroid/support/v4/app/r;->k:Landroid/support/v4/app/f;

    iget-boolean v1, p0, Landroid/support/v4/app/r;->g:Z

    iput-boolean v1, v0, Landroid/support/v4/app/f;->z:Z

    .line 110
    iget-object v0, p0, Landroid/support/v4/app/r;->k:Landroid/support/v4/app/f;

    iget-boolean v1, p0, Landroid/support/v4/app/r;->h:Z

    iput-boolean v1, v0, Landroid/support/v4/app/f;->y:Z

    .line 111
    iget-object v0, p0, Landroid/support/v4/app/r;->k:Landroid/support/v4/app/f;

    iget-object v1, p1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/m;

    iput-object v1, v0, Landroid/support/v4/app/f;->s:Landroid/support/v4/app/m;

    .line 113
    sget-boolean v0, Landroid/support/v4/app/m;->a:Z

    if-eqz v0, :cond_85

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instantiated fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/r;->k:Landroid/support/v4/app/f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_85
    iget-object v0, p0, Landroid/support/v4/app/r;->k:Landroid/support/v4/app/f;

    goto/16 :goto_6
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Landroid/support/v4/app/r;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget v0, p0, Landroid/support/v4/app/r;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-boolean v0, p0, Landroid/support/v4/app/r;->c:Z

    if-eqz v0, :cond_3d

    move v0, v1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Landroid/support/v4/app/r;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Landroid/support/v4/app/r;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, Landroid/support/v4/app/r;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-boolean v0, p0, Landroid/support/v4/app/r;->g:Z

    if-eqz v0, :cond_3f

    move v0, v1

    :goto_28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-boolean v0, p0, Landroid/support/v4/app/r;->h:Z

    if-eqz v0, :cond_41

    :goto_2f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Landroid/support/v4/app/r;->i:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 133
    iget-object v0, p0, Landroid/support/v4/app/r;->j:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 134
    return-void

    :cond_3d
    move v0, v2

    .line 126
    goto :goto_11

    :cond_3f
    move v0, v2

    .line 130
    goto :goto_28

    :cond_41
    move v1, v2

    .line 131
    goto :goto_2f
.end method
