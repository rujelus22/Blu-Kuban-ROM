.class public LdI;
.super Ljava/lang/Object;
.source "AccountsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/AccountsActivity;

.field final synthetic a:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/AccountsActivity;[Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, LdI;->a:Lcom/google/android/apps/docs/app/AccountsActivity;

    iput-object p2, p0, LdI;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, LdI;->a:Lcom/google/android/apps/docs/app/AccountsActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:Lck;

    iget-object v1, p0, LdI;->a:Lcom/google/android/apps/docs/app/AccountsActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 149
    iget-object v0, p0, LdI;->a:Lcom/google/android/apps/docs/app/AccountsActivity;

    iget-object v1, p0, LdI;->a:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/AccountsActivity;->a(Lcom/google/android/apps/docs/app/AccountsActivity;Ljava/lang/String;)V

    .line 150
    return-void
.end method
