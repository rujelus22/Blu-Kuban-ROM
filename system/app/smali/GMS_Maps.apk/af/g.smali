.class LaF/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:LaF/c;


# direct methods
.method constructor <init>(LaF/c;)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, LaF/g;->a:LaF/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, LaF/g;->a:LaF/c;

    invoke-static {v0, p1}, LaF/c;->b(LaF/c;Landroid/widget/RadioGroup;)V

    .line 166
    return-void
.end method
