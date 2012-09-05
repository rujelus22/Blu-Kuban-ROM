.class Lcom/sec/android/app/contacts/widget/ContactsViewPager$DataSetObserver;
.super Ljava/lang/Object;
.source "ContactsViewPager.java"

# interfaces
.implements Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/widget/ContactsViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/widget/ContactsViewPager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/widget/ContactsViewPager;)V
    .registers 2
    .parameter

    .prologue
    .line 1685
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$DataSetObserver;->this$0:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/widget/ContactsViewPager;Lcom/sec/android/app/contacts/widget/ContactsViewPager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1685
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$DataSetObserver;-><init>(Lcom/sec/android/app/contacts/widget/ContactsViewPager;)V

    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .registers 2

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$DataSetObserver;->this$0:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->dataSetChanged()V

    .line 1689
    return-void
.end method
