.class public Lcom/google/android/voicesearch/actions/ContactsValue;
.super Lcom/google/android/voicesearch/actions/SlotValue;
.source "ContactsValue.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/ContactsValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    new-instance v0, Lcom/google/android/voicesearch/actions/ContactsValue$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/ContactsValue$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/ContactsValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/SlotValue;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/SlotValue;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    .line 54
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    const-class v1, Lcom/google/android/voicesearch/actions/Contact;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/google/android/voicesearch/actions/Contact;)V
    .registers 3
    .parameter "contact"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/SlotValue;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/Contact;>;"
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/SlotValue;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/ContactsValue;->asStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, contacts:[Ljava/lang/String;
    const-string v1, ", "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public asStringArray()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/ContactsValue;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 85
    .local v0, contacts:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/ContactsValue;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 86
    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actions/ContactsValue;->get(I)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/Contact;->toAddressString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 89
    :cond_1a
    return-object v0
.end method

.method public asStringArrayWithFilledAddresses(Landroid/content/Context;)[Ljava/lang/String;
    .registers 6
    .parameter "context"

    .prologue
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/ContactsValue;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 105
    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/actions/ContactsValue;->get(I)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v1

    .line 106
    .local v1, contact:Lcom/google/android/voicesearch/actions/Contact;
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/Contact;->hasAddress()Z

    move-result v3

    if-nez v3, :cond_20

    .line 108
    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getContactWithAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v1

    .line 110
    :cond_20
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/Contact;->hasAddress()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 111
    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/Contact;->toAddressString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 114
    .end local v1           #contact:Lcom/google/android/voicesearch/actions/Contact;
    :cond_32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3a

    .line 115
    const/4 v3, 0x0

    .line 117
    :goto_39
    return-object v3

    :cond_3a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_39
.end method

.method public get(I)Lcom/google/android/voicesearch/actions/Contact;
    .registers 3
    .parameter "i"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/Contact;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/ContactsValue;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ContactsValue;->mContacts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 81
    return-void
.end method
