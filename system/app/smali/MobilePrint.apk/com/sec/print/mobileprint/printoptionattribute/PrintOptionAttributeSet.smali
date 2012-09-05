.class public Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;
.super Ljava/lang/Object;
.source "PrintOptionAttributeSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;",
            ">;"
        }
    .end annotation
.end field

.field listOptionClass:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 124
    new-instance v0, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->datas:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->listOptionClass:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->datas:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->listOptionClass:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->readFromParcel(Landroid/os/Parcel;)V

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;)Z
    .registers 5
    .parameter "attribute"

    .prologue
    const/4 v0, 0x1

    .line 49
    iget-object v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->listOptionClass:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_f

    .line 51
    const/4 v0, 0x0

    .line 56
    :goto_e
    return v0

    .line 54
    :cond_f
    iget-object v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->listOptionClass:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Class;)Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, category:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->listOptionClass:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 68
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 70
    const/4 v1, 0x0

    .line 73
    :goto_a
    return-object v1

    :cond_b
    iget-object v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;

    goto :goto_a
.end method

.method public getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->datas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->datas:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 121
    iget-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->listOptionClass:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 122
    return-void
.end method

.method public remove(Ljava/lang/Class;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, category:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->listOptionClass:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 94
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 96
    const/4 v1, 0x0

    .line 102
    :goto_a
    return v1

    .line 99
    :cond_b
    iget-object v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->listOptionClass:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 102
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->datas:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 115
    iget-object v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;->listOptionClass:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 116
    return-void
.end method
